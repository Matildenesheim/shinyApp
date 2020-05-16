

PASSWORD <- data.frame(
  Brukernavn = c("patient","caregiver"), 
  Passord = c("0000","1234"),
  permission  = c("basic", "advanced"), 
  stringsAsFactors = F
)

output$sidebar <- renderUI ({
  if (USER$Logged == TRUE) {
    menuItem("hello",tabName="hola")
  }
})

output$uiLogin <- renderUI({
  if (USER$Logged == FALSE) {
    wellPanel(
      textInput("userName", "Username:"),
      passwordInput("passwd", "Password:"),
      br(),
      actionButton("Login", "Login")
    )
  }
})

output$pass <- renderText({  
  if (USER$Logged == FALSE) {
    USER$pass
  }  
})


# Login info during session ----
output$userPanel <- renderUI({
  if (USER$Logged == TRUE) {
    fluidRow(
      column(2,
             "User: ", USER$name
      ),
      column(1, actionLink("logout", "Logout"))
    )
  }  
})

output$body <- renderUI ({
  if (USER$Logged == TRUE ) {
    if (PASSWORD[,"permission"][which(PASSWORD$Brukernavn==input$userName)]=="advanced") {
      tabPanel("Personal Page/Mindfulness",icon=icon("spa"),
               h1("Mindfulness"))
      
    } 
    else {
      navbarMenu("For caregivers", icon=icon("users"),
                 tabPanel("Log in",
                          h1("Log in")),
                 
                 tabPanel("New user - register here",
                          h1("Registration"),
                          h4("Log in")),
                 
                 tabPanel("Edit/update info for existing user",
                          h1("Current users")))
      
    }
  }
  else {
    loginpage
  }
})


# control login
observeEvent(input$Login , {
  Username <- isolate(input$Brukernavn)
  Password <- isolate(input$Passord)
  Id.username <- which(PASSWORD$Brukernavn == Username)
  Id.password <- which(PASSWORD$Passord    == Password)
  if (length(Id.username) > 0 & length(Id.password) > 0) {
    if (Id.username == Id.password) {
      USER$Logged <- TRUE
      USER$name <- Username      
    } 
  } else {
    USER$pass <- "User name or password failed!"
  }
})

# control logout
observeEvent(input$logout , {
  USER$Logged <- FALSE
  USER$pass <- ""
  
  
  
})