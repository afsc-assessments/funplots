
#' Plot catches for each species by gear
#'
#' @param thedata catch data frame
#' @param year latest year to include
#' @param species species group code, e.g. "DUSK" found where
#' @param area sample area "GOA", "AI" or "BS" (or combos)
#' @param db database to use
#'
#' @return
#' @export
#' @importFrom dplyr select
#' @importFrom dplyr mutate
#' @importFrom dplyr filter
#' @importFrom dplyr summarise
#' @importFrom dplyr group_by
#' @importFrom dplyr left_join
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 aes
#' @importFrom ggplot2 geom_bar
#' @importFrom ggplot2 geom_col
#' @importFrom ggplot2 geom_line
#' @importFrom ggplot2 facet_grid
#' @importFrom ggplot2 labeller
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 scale_color_manual
#' @importFrom ggplot2 scale_fill_discrete
#' @importFrom ggplot2 labs

#'
#' @examples
#' plot_total_catch(year = 2022,species = "DUSK",area = "GOA",db = akfin)

plot_total_catch<-function(thedata,year,species,area,db = akfin) {
    #pull catch data

    csum.df<-thedata %>% group_by(YEAR) %>%
      summarise(Total = sum(TONS))
      g<-ggplot(data = csum.df,aes(x = YEAR,y = Total))

return(g)
}
