## Introduction

MetaCyto is an R package that performs meta-analysis of both flow cytometry and mass cytometry (CyTOF) data. It is able to jointly analyze cytometry data from different studies with diverse sets of markers. MetaCyto carries out the meta-analysis in 4 steps: data collection, data pre-processing, identifying common cell subsets across studies and statistical analysis. In addition to perform meta-analysis, it can also be used to analyze cytometry data from single experiment.  


## Installation

**Method 1:** Please install dependencies using the following code:

```
install.packages(c("dplyr", "tidyr", "fastcluster", "ggplot2", "metafor", "cluster"))

if (!requireNamespace("BiocManager", quietly=TRUE))
    install.packages("BiocManager")
BiocManager::install("flowCore")
BiocManager::install("FlowSOM")
```
After installing all the dependencies, please download the whole package repository, open the “MetaCyto.Rproj” file and click Build&Reload button in RStudio. 

Note for CITRUS users: No need to switch back to the default compiler using this method.

**Method 2:** To install the MetaCyto package, please run the following code:
```
library("devtools")
install_github("hzc363/MetaCyto")
```
Note: Some users report errors when installing MetaCyto using this method, due to version issues of R and devtools. If the problem persists after updating R and devtools, please use Method 1. 

Note for CITRUS users: If you have changed the compiler for R when installing CITRUS, please switch back to the default compiler.


## Examples

The best way to learn how to use MetaCyto is through running examples. Three self-contained examples, including code and data, are created to show users how to use MetaCyto for different purposes. They are available in : https://github.com/hzc363/MetaCyto_Examples


* **MetaCyto_Example_Meta_Local:** This example shows how to perform meta-analysis using MetaCyto on your local datasets. 


* **MetaCyto_Example_Meta_ImmPort:** This example shows how to use MetaCyto to meta-analyze cytometry data downloaded from ImmPort


* **MetaCyto_Example_One_Experiment:** This example shows how to use MetaCyto to analyze cytometry data from a single experiment. 

## Vignette
A vignette in the form of R Markdown (MetaCyto_Vignette.Rmd) is created to introduce users to MetaCyto. It is available in : https://github.com/hzc363/MetaCyto_Examples

## Reference
If you use the FlowSOM package, please use the following citation[1]:

* [1]Hu, Zicheng, et al. "Meta-analysis of Cytometry Data Reveals Racial Differences in Immune Cells." bioRxiv (2017): 130948.


Data used in the example is a subset of data from SDY420[2] and SDY736[3] on ImmPort[4].

* [2] Whiting, Chan C., et al. "Large-scale and comprehensive immune profiling and functional analysis of normal human aging." PloS one 10.7 (2015): e0133627.

* [3] Wertheimer, Anne M., et al. "Aging and cytomegalovirus infection differentially and jointly affect distinct circulating T cell subsets in humans." The Journal of Immunology 192.5 (2014): 2143-2155.

* [4] Bhattacharya, Sanchita, et al. "ImmPort: disseminating data to the public for the future of immunology." Immunologic research 58.2-3 (2014): 234-239.
