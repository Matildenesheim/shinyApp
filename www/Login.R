

PASSWORD <- data.frame(
    user = c("patient","caregiver"), 
    pw = c("0000","1234"),
    permission  = c("basic", "advanced"), 
    stringsAsFactors = F
)


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

#output$permission <- renderUI({
 #   if (USER$Logged == TRUE) {
  #      if (PASSWORD[,"permission"][which(PASSWORD$user==input$userName)]=="advanced"){
   #         tabItems(
    #            tabPanel("Personal Page", tabName = "Personal Page", icon=icon("user"))
                      #   h1("Personal Page"),
                       #  img(src = "logo.png", height = 140, width = 140,style = "position: relative; top: -2px; right: -400px;"),
                        # p(strong("Welcome to your personal page.")),
                         #p("This is where you can do stuff and see stuff of whatever you need"),
                        # img(src = "mindfulness.png", height = 200, width = 200,style = "position: relative: -300px; right: -200px;",align="center"),
                        # img(src = "calenderimage.png", height = 200, width = 200,style = "position: relative; middle: -100px; right: -100px;",align="center"),
                        # img(src = "braingame.png", height = 200, width = 200,style = "position: relative; middle: -200px; right: -200px;",align="center"))
        #    )
       # }
      #  else{ 
     #       tabItems(
    #            tabItem("Home", tabName="home",icon=icon("home"))
   #         )
  #          }
 #   }
#})
     
#output$body <- renderUI ({
 #   if (USER$Logged == TRUE) {
  #      if (PASSWORD[,"permission"][which(PASSWORD$user==input$userName)]=="advanced"){
   #         tabItems( 
    #            tabItem(
     #               title = "Test",class = "active",
      #              h2("test test")),
       #         p(strong("welcome to test")))
            
        #}
        #else {
         #   tabItems(
          #      tabPanel(
           #         title = "Hello again my test friend"))
            
     #   }
    #}
#})   
 
#output$permission <- renderUI ({
 #   if (USER$Logged == TRUE) {
  #      if (PASSWORD[,"permission"][which(PASSWORD$user==input$userName)]=="advanced"){
   #         appendTab("Hello")
           # tabItems( 
             #   tabPanel("Hello Teeest",tabName = "Personal Test Page", icon=icon("user"))
            #)
            
    #    }
     #   else {
      #      tabItems(
       #         tabPanel(
         #           title = "Hello again my test test friend"))
        #    
            
        #}
    #}
#})     
        


############## another try #############3

observeEvent(input$Login, {
    if (USER$Logged == TRUE) {
              if (PASSWORD[,"permission"][which(PASSWORD$user==input$userName)]=="advanced"){
                  shinyjs::show(id = "mainPanel")
                  appendTab(inputId = "tabselected",
                            
                            tabPanel("Tab 1",
                                     value = 2
                                     
                            ) # closes tabPanel,
                  )
              } else {
                  appendTab(inputId = "tabselected",
                            
                            tabPanel("Tab 2",
                                     value = 4
                                     
                            ) # closes tabPanel,
                  )
              }
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

# control login
observeEvent(input$Login , {
    Username <- isolate(input$userName)
    Password <- isolate(input$passwd)
    Id.username <- which(PASSWORD$user == Username)
    Id.password <- which(PASSWORD$pw    == Password)
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