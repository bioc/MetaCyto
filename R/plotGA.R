#' plot the result from the glmAnalysis function
#'
#' A function that plot the result from the glmAnalysis function.
#' @param GA a data frame returned from the function glmAnalysis.
#' @param size font size of texts in the plot
#' @return The plot will show up automatically.
#' @examples
#' #collect all summary statistics
#'fn=system.file("extdata","",package="MetaCyto")
#'files=list.files(fn,pattern="cluster_stats_in_each_sample",recursive=TRUE,full.names=TRUE)
#'fcs_stats=collectData(files,longform=TRUE)
#'# Collect sample information
#'files=list.files(fn,pattern="sample_info",recursive=TRUE,full.names=TRUE)
#'sample_info=collectData(files,longform=FALSE)
#'# join the cluster summary statistics with sample information
#'all_data=inner_join(fcs_stats,sample_info,by="fcs_files")
#'# See the fraction of what clusters are affected by age (while controlling for GENDER)
#'GA=glmAnalysis(value="value",variableOfInterst="SUBJECT_AGE",parameter="fraction",
#'               otherVariables=c("GENDER"),studyID="study_id",label="label",
#'               data=all_data,CILevel=0.95,ifScale=c(TRUE,FALSE))
#' GA=GA[order(GA$Effect_size),]
#' # plot the effect sizes
#' plotGA(GA)
#' @export
plotGA=function(GA,size=16){
  GA$label=factor(GA$label,levels=GA$label)
  p <- ggplot2::ggplot(GA, ggplot2::aes(y=GA$Effect_size,x=GA$label,ymin=lower, ymax=upper))+
    ggplot2::geom_pointrange()+
    ggplot2::geom_hline(yintercept = 0, linetype=2)+
    ggplot2::coord_flip()+
    ggplot2::xlab('label')+
    ggplot2::ylab('Effect size')+
    ggplot2::theme(text=ggplot2::element_text(size=size))
  print(p)
}