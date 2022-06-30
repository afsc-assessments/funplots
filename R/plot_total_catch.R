
#' Plot catches for each species by gear
#'
#' @param thedata catch data frame
#' @param year latest year to include
#' @param species species group code, e.g. "DUSK" found where
#' @param area sample area "GOA", "AI" or "BS" (or combos)
#'
#' @return
#' @export
#' @importFrom dplyr summarise
#' @importFrom dplyr group_by
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 aes
#' @importFrom ggplot2 geom_bar
#' @importFrom ggplot2 geom_line
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 scale_fill_viridis_d
#' @importFrom ggplot2 labs

#'
#' @examples
#' plot_total_catch(year = 2022,species = "DUSK",area = "GOA",db = akfin)

plot_total_catch<-function(thedata,year,species,area) {
    #pull catch data

    csum.df<-thedata %>% group_by(Year,Gear) %>%
      summarise(Total = sum(Tons))
      g<-ggplot(data = csum.df,aes(x = Year,y = Total,fill = Gear)) +
        geom_bar(stat = "identity") +
        theme(axis.text.x = element_text(angle = 55,vjust = 0.75)) +
        scale_fill_viridis_d(direction = -1) +
        labs(x="Year",y="Total Catch (mt)")
       # + theme(axis.title.x = element_text(vjust=-0.5))

return(g)
}
