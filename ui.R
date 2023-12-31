# Global Variables ------------------------------------------------------------
APP_THEME <- shinytheme("superhero")

# App UI ----------------------------------------------------------------------
ui <- fluidPage(
  theme = APP_THEME,
  sidebarLayout(
    sidebarPanel(
      h2("View Options"),
      hr(),
      checkboxGroupInput("view.allpro",
                         "View Pro Bowl / All-Pro Selections",
                         c("Pro Bowl Selections",
                           "All-Pro Selections")),
      selectizeInput("view.pos", 
                     "Filter Player Positions",
                     c("Select a Position"='', nfl_22$FantPos),
                     multiple = TRUE),
      selectizeInput("view.team", 
                     "Filter Teams",
                     c("Select a Team"='', nfl_22$Tm),
                     multiple = TRUE)
    ),
    mainPanel(
      tableOutput("table.main")
    )
  )
)
