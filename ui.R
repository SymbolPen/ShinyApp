shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Measures of market liquidity"),
                sidebarPanel(
                        numericInput('Adv', 'Average Daily Volume (m)', 2, min = 0, max = 20, step = 0.2),
                        numericInput('Float', 'Float (m)', 200, min = 100, max = 2000, step = 20),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Results of turnover'),
                        h4('Average Daily Volumn'),
                        verbatimTextOutput("inputAdv"),
                        h4('Float'),
                        verbatimTextOutput("inputFloat"),
                        h4('Which resulted in a turnover of (days)'),
                        verbatimTextOutput("Turnover")
                )
        )
)
