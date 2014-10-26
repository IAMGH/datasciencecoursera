pollutantmean <- function(directory, pollutant, id = 1:332) {
       
       returndir<-getwd()
       
       workindir<-paste(c(getwd(),directory),collapse="/")
       
       setwd(workindir)
       
       specfiles<-list.files()  # poss use full.names=TRUE instead
       
       # could create variable with two columns, first numbered:
       # cbind(1:length(specfiles),specfiles) but needs work as 
       # note first column is text as second column is text
       
       monitdata<-data.frame()  #set up empty dataframe for monitors
       
       for(i in id){
              monitdata<-rbind(monitdata,read.csv(specfiles[i]))
       
       }
       
       #  lapply(monitdata[,2:3],mean,na.rm=TRUE)
       
       setwd(returndir)
       
       res<-sapply(monitdata[,2:3],mean,na.rm=TRUE)
       
       # pollutant<-"sulfate"
       
       as.numeric(res[pollutant])
       
}