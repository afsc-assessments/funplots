
#' Plot catches for each species by gear
#'
#' @param year latest year to include
#' @param species species group code, e.g. "DUSK" found where
#' @param area sample area "GOA", "AI" or "BS" (or combos)
#'
#' @return
#' @export
#'
#' @examples
#' plot_catches(year = 2022,species = "DUSK",area = "GOA")

plot_catches<-function(year,species,area) {
  #read in catch data from afscdata package
  c.df<-afscdata::q_catch(year=year, species=species, area=area, akfin="AKFIN", save = TRUE)
}
