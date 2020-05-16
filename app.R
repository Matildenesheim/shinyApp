library(shiny);library(shinyjs);library(ggplot2);library(shinydashboard)


##### Shopping list? 
##### Streak? 

ui <- fluidPage(useShinyjs(),
                navbarPage("Traumatic Injury of Brain Assistance",
                           id="hello",
                           theme = "style/style.css",
                          # HTML(paste0('document.body.style.backgroundColor = "ivory";')),
                           tags$script(src="myscript.js"),
                           footer=HTML("
                            <!-- Footer -->
                           <footer class='page-footer font-large indigo'>
                           <div class ='footer-img text-center py-3'>
                           <img src = 'footerlogo1.png', height = 100, width = 300>,
                           <!-- Copyright -->
                           <div class='footer-copyright text-center py-3'>© 2020 Copyright:
                           <a href='https://www.linkedin.com/in/matilde-nesheim-8716a4149/'> Matilde Nesheim, </a> <a href= 'https://www.linkedin.com/in/caroline-casey-16a054181/'> Caroline Casey </a> <a href= 'https://www.linkedin.com/in/alberte-seeberg-044404191/'> & Alberte Seeberg</a>
                           </div>
                           <!-- Copyright -->
                           </footer>
                           <!-- Footer -->"),
                       # <img src="link til ikon" alt="alt-tekst til billede"> </a>
                           
                           ### TAB FOR LOGIN ###
                           
                        tabPanel("Login", icon=icon("sign-in-alt"),
                                    h1("Welcome"),
                                    h4("Please login by typing your password below"),
                                    passwordInput("pass", "enter your password to login "),
                                    actionButton("enter", "enter"),align="center"),
                           
                           ### TABS FOR CAREGIVERS ###
                           
                        tabPanel("Patients", icon=icon("users"),  
                                 h1("Patients"), br(),
                                 h5("Choose your patient below", align="center"),
                                 img(src = "carla.png", height = 180, width = 180),
                                # img(src = "girl.png", height = 180, width = 180),#style = "position: relative; bottom: -5px; right: -400px;"),
                                 img(src = "girl2.png", height = 180, width = 180),
                                 img(src = "adam.png", height = 180, width = 180),#style = "position: relative; bottom: -5px; right: -350px;"),
                                 img(src = "boy.png", height = 180, width = 180),#,style = "position: relative; bottom: -5px; left: -100px;"
                                 img(src = "woman.png", height = 180, width = 180),#style = "position: relative; bottom: -5px; right: -140px;"),
                                 img(src = "man.png", height = 180, width = 180),#style = "position: relative; bottom: -5px; right: -120px;"),
                                 img(src = "genderless.png", height = 180, width = 180), br(), br(),
                                 br(), h5("... For the sake of simplicity for this project, we assume the caregiver will choose Carla as the patient of interest henceforth.", align="center")),
                                 
                        
                        
                        tabPanel("Carla's Calendar", icon=icon("calendar"),  
                                 h4("This is your shared calendar and access to chat with your patient, Carla."),
                                 img(src = "carlachat.png", height = 180, width = 180, align="right"), br(),
                                 h5("You can add, reschedule, or cancel appointments in Carla's calendar by pressing 'Google Calendar' in the bottom right."),
                                 h5("Carla will receive a notification in case of any changes."),
                                 h5("You can communicate with Carla through the integrated chat function. To begin click 'Start Chat'."),
                                 HTML("<iframe src='https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23B39DDB&amp;ctz=Europe%2FCopenhagen&amp;src=czA0NW9ha2lnOGdudXUzaHA3c3ZjYTZkaDBAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%23B39DDB&amp;title=Carla&#39;s%20Calendar&amp;showPrint=0&amp;showNav=1&amp;showTabs=1&amp;showTz=0' style='border:solid 1px #777' width='800' height='600' frameborder='0' scrolling='no'></iframe>")), 
                        
                        
                        tabPanel("Rehabilitation Games", icon=icon("brain"),
                                 h1("Memory Rehabilitation Games"),
                                 h5("Here you can suggest memory rehabilitation games for Carla based on her current level and other relevant aspects.", align="center"),
                                 h5("When you click on a game, it will appear as a suggestion for Carla on her personal page.", align="center"), 
                                 img(src = "info.png", height = 100,width = 300, align="right"), br(),
                                 br(), br(), 
                                 
                                 br(), h4(strong("Currently suggested for Carla:")), br(),
                                 img(src = "number.png", height = 140, width = 140, align="center"),
                                 img(src = "mimesis.png", height = 140, width = 140, align="center"),
                                 img(src = "sequence.png", height = 140, width = 140, align="center"), br(),
                                 
                                 br(), h4(strong("Suggested games completed by Carla:")), br(),
                                    img(src = "memorymatches.png", height = 140, width = 140),
                                    img(src = "simon.png", height = 140, width = 140),
                                    img(src = "kingofmath.png", height = 140, width = 140),
                                    img(src = "supermemory.png", height = 140, width = 140),
                                    img(src = "magic.png", height = 140, width = 140), br(),
                                    
                                    
                                    hr(h4(strong("Add more suggestions by clicking on the games listed below."))),
                                    
                                    #games
                                    tags$u(h4(hr("Games for Level 1 - Easy"))),
                                    img(src = "matchesclean.png", height = 140, width = 140),
                                    img(src = "simonclean.png", height = 140, width = 140), 
                                    img(src = "kingclean.png", height = 140, width = 140),
                                    img(src = "superclean.png", height = 140, width = 140), br(),
                                    
                                    tags$u(h4(hr("Games for Level 2 - Medium"))), br(),
                                    img(src = "magicclean.png", height = 140, width = 140),
                                    img(src = "number.png", height = 140, width = 140), 
                                    img(src = "mimesis.png", height = 140, width = 140),
                                    img(src = "sequence.png", height = 140, width = 140), br(), br(), 
                                    
                                    tags$u(h4(hr("Games for Level 3 - Hard"))), br(),
                                    img(src = "dualnback.png", height = 140, width = 140),
                                    img(src = "memorymatch.png", height = 140, width = 140), 
                                    img(src = "repeat.png", height = 140, width = 140)),
                                 
                             
                                 
                           
                           ### TABS FOR PATIENTS ### 
                           
                      #     tabPanel("Home",icon=icon("home"),
                       #             h1("TIBA",
                        #            h4(strong("Traumatic Injury of Brain Assistance",align ="center"),align="center"),
                               #        h5("However, it is important to remember that",span(strong(" you are not alone in this.")), align = "center"), br(),
                         #           h5("Many technologies for TBI users either focus on providing autonomy and assistance with daily tasks (CAT) 
                          #             or focus solely on rehabilitation (CRT). We believe that through facilitating autonomy for memory related 
                           #            impairments and having rehabilitation exercises accessible through the same interface, we can design a system
                            #           that scaffolds independence and successful recovery.", align="center"),
                            #   h5("Overall, the main goal of TIBA is to provide the best usability and UX possible for TBI patients in order to motivate the users in managing their daily lives and rehabilitation."),
                             #     h5("We aim to make the interface as intuitive and easy to learn as possible. Furthermore,TIBA recognises that psychiatric comorbidities 
                              #    have negative consequences for successful progress in both daily living (CAT) and rehabilitation for TBI patients (CRT)", align="center"), 
                               #   h5("Therefore, TIBA incorporates mental health support. We hope you enjoy our product and find the app helpful.", align="center"), br(),
                              
                               #h5("Sincerely", align="center"), 
                               #h5("Matilde Nesheim, Caroline Casey & Alberte Seeberg",align="center"))),
                              
                           
                           tabPanel("Home",icon=icon("home"),
                                   
                                    h1("Welcome Carla"),  
                                    img(src="tree1.png", height = 200, width = 150, align = "center"), align="center", br(),
                                    h5("See! Your tree is growing. Keep playing games to make it grow even more.", align = "center"),
                                    h5(strong("See suggested games from your caregiver, your progress, and more important information here.", align="center")),
                               #     h5("See! Your tree is growing. Keep playing games to make it grow even more.", align = "center"),
                                #    img(src="tree1.png", height = 200, width = 150, align = "center"), align="center", br(),
                                    h5(hr("Your caregiver, Lisa, suggested the following games for you.")),
                                 #   img(src = "lisa.png", height = 180, width = 180, align="right"), br(),
                                    img(src = "number.png", height = 140, width = 140, align="center"), 
                                    img(src = "mimesis.png", height = 140, width = 140, align="center"),
                                    img(src = "sequence.png", height = 140, width = 140, align="center"),
                                    
                                    h4(hr(strong("Your Items",align="left"))), br(),
                                    img(src = "groceries.png", height = 140, width = 140), 
                                    img(src = "todo.png", height = 140, width = 140),
                                    img(src = "journal.png", height = 140, width = 140),
                                    
                                    
                                    h4(hr(strong("Your Progress", align="center"))), br(),
                                    h5("You've played 7 days in a row! Congratulations! Keep up the good work!"), br(),
                                    h5("Current streak: 7 days", align = "center"),
                                    h5("Longest streak: 11 days", align = "center"),
                                    #h5("See your progess here:"), 
                                    img(src = "streak1.png", height = 180, width = 180), br(), br(),
                                    h5(strong("Let your friends know how you're doing!")),
                                    h5("Share your results on"), HTML("<a href='http://www.facebook.com/'> <i class='fab fa-facebook'></i> Facebook </a>")),
                                #    h5(hr(strong("Highscores:")), align="center"), br(),
                                 #   h5(strong("Your score in Memory Matching 2", align="left"), align="left"),
                                  #  h5("1. Regina George - Score: 2397", align = "left"),
                                   # h5("2. Gretchen - Score: 1997", align = "left"),
                                    #h5("3. Cady - Score: 1951", align = "left"),
                            #        h5("4. Karen - Score: 1871", align = "left"),
                             #       h5("5. Glen Coco - Score: 1861", align = "left"),
                              #      h5(strong(" ... 12. Carla - Score: 1752"), align="left"), br()),
                                    
                           
                           tabPanel("Calendar",icon=icon("calendar"), h4(strong("Calendar")),
                                    h5("This is your shared calendar and access to chat with your caregiver, Lisa."),
                                    img(src = "lisa.png", height = 180, width = 180, align="right"), br(),
                                    h5("You will get a notification 1 hour before an event and another 30 minutes before."),
                                    h5("Don't worry, you will receive a notification if your appointment is cancelled, reschedueled, or changed by Lisa."),
                                    h5("If you cancel an appointment, Lisa will be notified as well. "), 
                                    h5("If you have any questions for Lisa, you can write to her by clicking on the 'Start Chat' button."), br(),
                                  HTML("<iframe src='https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23B39DDB&amp;ctz=Europe%2FCopenhagen&amp;src=czA0NW9ha2lnOGdudXUzaHA3c3ZjYTZkaDBAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%23B39DDB&amp;title=Carla&#39;s%20Calendar&amp;showPrint=0&amp;showNav=1&amp;showTabs=1&amp;showTz=0' style='border:solid 1px #777' width='800' height='600' frameborder='0' scrolling='no'></iframe>")),
                           
                           tabPanel("Memory Rehabilitation", icon=icon("brain"),
                                    h1("Memory Rehabilitation"),
                                    h4("Cognitive Training Programs. Challenge your mind!", align = "center"), br(),
                                    h4(strong("All available games:")),
                                    h5("Press to play."),
                                    
                                    #games
                                    tags$u(h4(hr("Games for Level 1 - Easy"))),
                                    img(src = "matchesclean.png", height = 140, width = 140),
                                    img(src = "simonclean.png", height = 140, width = 140), 
                                    img(src = "kingclean.png", height = 140, width = 140),
                                    img(src = "superclean.png", height = 140, width = 140),
                                    
                                    tags$u(h4(hr("Games for Level 2 - Medium", align="center"))), br(),
                                    img(src = "magicclean.png", height = 140, width = 140),
                                    img(src = "number.png", height = 140, width = 140), 
                                    img(src = "mimesis.png", height = 140, width = 140),
                                    img(src = "sequence.png", height = 140, width = 140),
                                    
                                    tags$u(h4(hr("Games for Level 3 - Hard"))), br(),
                                    img(src = "dualnback.png", height = 140, width = 140),
                                    img(src = "memorymatch.png", height = 140, width = 140), 
                                    img(src = "repeat.png", height = 140, width = 140)),
                        

                
                           
                           navbarMenu("Get Help",icon=icon("hand-holding-heart"),
                                      tabPanel("Helplines",
                                               h1("We are here to help you"),
                                               h3("Do not hesitate to reach out"), align="center",
                                               img(src = "phone.png", height = 180, width = 180, align="center"),
                                               img(src = "groupchat.png", height = 180, width = 180, align="center"),
                                               img(src = "letter.png", height = 180, width = 180,align="center"), br(),
                                               
                                               br(),
                                               h3("Other useful links:"), br(),
                                               HTML("<a href='https://www.psykiatrifonden.dk/om.aspx'> Psykiatri Fonden </a> "), br(),
                                               HTML("<a href='https://www.brainline.org/people-brain-injury/community-support'> TBI Online Community and Support Groups </a> "), br(),
                                               HTML("<a href='https://www.psykiatrifonden.dk/om.aspx'> Depression, Anxiety, and PTSD Online Forums </a> ")), br(),
                                      
                                     
                                      tabPanel("Think you are Depressed?",
                                               h1("Depression and TBI"),
                                               h5("It can be extremely hard to recover from a traumatic brain injury. The extent of the recovery process can come as a surprise to many.",align = "center"),
                                               h5("However, it is important to remember that",span(strong(" you are not alone in this.")), align = "center"), br(),
                                               img(src = "help2.png", height = 180, width = 180), align="center",
                                               h5("Did you know 3 out of 10 suffer from depression after traumatic brain injury? 
                                                  If you think you might be depressed, have a look at the list of symptoms below."), 
                                               h5("Luckily it is easy to get help. Do not hesitate to get in contact through the helpline page.", align="center"), br(),
                                               
                                               h4(hr(tags$u("Common Symptoms of Depression")), align = "left"),
                                               h5("1. Feeling down, depressed, or sad most of the day", align="left"), 
                                               h5("2. Changes in your sleeping habits, such as sleeping poorly or sleeping more than usual", align = "left"),
                                               h5("3. Losing interest in usual activities such as favorite hobbies, time with family members, or activities with friends", align="left"), 
                                               h5("4. Increasing your use of alcohol, drugs, or tobacco", align="left"), 
                                               h5("5. Not eating as much or eating more, whether or not you are hungry", align="left"), 
                                               h5("6. Strong feelings of sadness, despair, or hopelessness", align="left"), 
                                               h5("7. Thoughts of suicide", align="left"), br(), 
                                               
                                               h4(hr("Are you depressed?"),
                                                  h5("Contact a health care professionel if you recognize any symptoms. We are here to help."),
                                                  img(src = "phone.png", height = 180, width = 180, align="center")), br(),br(),
                                                  
                                               )
                                             
                                      ),
                           
                           
                           navbarMenu("Info", icon=icon("info"), 
                                      tabPanel("About TBI",
                                               h1("Traumatic Brain Injury"),
                                               h4(strong("TBI", align ="center"), align="center"),
                                               h5("Traumatic Brain Injury (TBI) is a major health problem worldwide, estimated to affect more than 10 million people annually.", align="center"),
                                               h5("TBI is a suddenly acquired brain injury, caused by damage to the brain by an external force."),
                                               h5("Most cases of TBI are caused by falling, being struck by or against an object, motor vehicle crashes, or intentional self-harm."),
                                               h5("The severity of a TBI ranges from mild to severe.", align="center"),
                                               br(),
                                               h4(strong("Consequences of TBI", align="center"),align="center"),
                                               h5("Depending on the severity of the TBI, patients may experience a variety of cognitive deficits, which can be disabling for daily function.", align="center"), 
                                               h5("Common impairments include memory, motor skills, speech and mental health. Are you feeling down? Click on the Get Help menu."),
                                               h5("Do not hesitate to contact us if you have any questions or concerns. Find our contact info on the 'Contact us' page."), br(),
                                               h5("We are here to help."), align="center"),
                                          
                                      
                                      
                                         tabPanel("GDPR",
                                                 h1("Your data security", align="center"),
                                                    h5("Thank you for choosing to be part of the TIBA community.",align="center"),
                                                    h5("We are committed to protecting your personal information and your right to privacy, which we take very seriously."),
                                                 
                                                    h5("All personal data is handled with care and in accordance to the general data protection regulation (GDPR) made by the European Union."), br(),
                                                       h5(HTML(" You can read more about GDPR <a href='https://gdpr-info.eu/'>here. </a>")), br(),
                                                    h5("We hope you take some time to read through it carefully, as it is important.", align="center"),
                                                 h5("If you have any questions or concerns about our policies and
                                                    practices regarding your personal information, please contact us at support@tiba.com.", align = "center"),align = "center"),
                                                 
                                      
                                       tabPanel("About us",
                                                align ="center",
                                               h1("About Us"),
                                               h4(strong("Traumatic Injury of Brain Assistance (TIBA)",align ="center"),align="center"),
                                               #        h5("However, it is important to remember that",span(strong(" you are not alone in this.")), align = "center"), br(),
                                               h5("TIBA is a system designed to provide both the benefits of an assistive technology in provding autonomy in daily life as well as focusing on rehabilitation."),
                                               h5("We believe that through facilitating autonomy for memory related 
                                       impairments and having rehabilitation exercises accessible through the same interface,"),
                                               h5("we can design a system
                                       that scaffolds independence and successful recovery.", align="center"),
                                               h5("We aim to make the interface as intuitive and easy to learn as possible."), 
                                               h5("Overall, the main goal of TIBA is to motivate TBI patients in managing their daily lives and rehabilitation."), br(),
                                 
                                               h4(strong("The Team Behind TIBA")),
                                              h5("We are three cognitive science students who enjoy making TIBA websites and Paul bots."),
                                            h5("We are dedicated to giving you the very best assistive technology that focuses on rehabilitation."),
                                           h5("We hope you enjoy our product and find the app helpful. If you have any questions or comments, please don't hesistate to contact us. "), br(),
                                          
                                         h5("Sincerely"),
                                        h5("Matilde Nesheim, Caroline Casey & Alberte Seeberg")),
                                        
                                      
                                      tabPanel("Contact us",
                                            align="center",
                                               img(src = "caro.png", height = 180, width = 180),
                                               img(src = "matilde.png", height = 180, width = 180),
                                               img(src = "alberte.png", height = 180, width = 180), br(),
                                          h1("Contact us"),
                                         p(strong("Need a hand? Or a high five?")),
                                        p("Here's how to reach us."),
                                       p("Email: admin@tiba.com"),
                                      p("Phone: +45 88 88 88 88"))
                                      
                           ) # closes navbarMenu
                                      
                                      
                                      
                ) #close navbarPage
                
) #closes fluidPage








server <- function(input, output, session) {
    hideTab("hello","Rehabilitation Games"); hideTab("hello","Memory Rehabilitation"); hideTab("hello","Info");hideTab("hello","Get Help"); hideTab("hello","Patients");hideTab("hello", "Carla's Calendar"); hideTab("hello","Home"); hideTab("hello","Calendar");
    
    observeEvent(input$enter,{
        if (input$pass == "caregiver"){hideTab("hello","Calendar");
            hideTab("hello", "Home");
            hideTab("hello","Get Help");
            hideTab("hello", "Memory Rehabilitation");
            {showTab("hello", "Patients"); 
                showTab("hello","Info");
                showTab("hello","Rehabilitation Games");
                showTab("hello","Carla's Calendar")}}
        
        
        
        if (input$pass == "patient"){
            hideTab("hello","Carla's Calendar");
            hideTab("hello", "Rehabilitation Games");
            hideTab("hello","Patients");
            {showTab("hello","Home"); 
                showTab("hello","Memory Rehabilitation");
                showTab("hello","Get Help");
                showTab("hello", "Calendar");
                showTab("hello", "Info")
            }}
        
        appData = data #our testData taken from iris-dataset
        #print(input$selectIrisColumn)
        
        output$streakplot <- renderPlot({
            ggplot(appData,aes(x=Streak,y=Days,fill=Streak))+
                geom_bar(stat="identity")+theme_minimal()+ scale_fill_brewer(palette="Blues")
        })     
        
    }) #close observeEvent
    
} #close server

shinyApp(ui, server)


# + scale_fill_brewer(palette="Blues")


# <iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=2&amp;bgcolor=%23B39DDB&amp;ctz=Europe%2FCopenhagen&amp;src=czA0NW9ha2lnOGdudXUzaHA3c3ZjYTZkaDBAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%23B39DDB&amp;showTz=0&amp;showTabs=1&amp;showPrint=0&amp;showNav=1&amp;showTitle=1&amp;title=Carla&#39;s%20Calendar" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>
# calendar code 
# <iframe src="https://calendar.google.com/calendar/embed?src=s045oakig8gnuu3hp7svca6dh0%40group.calendar.google.com&ctz=Europe%2FCopenhagen" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>

