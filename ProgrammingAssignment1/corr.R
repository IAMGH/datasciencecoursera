corr <- function(directory, threshold = 0) {
       returndir<-getwd()       # need to come back here
       workindir<-paste(c(getwd(),directory),collapse="/")
       setwd(workindir)
       specfiles<-list.files()  
       monitdata<-data.frame()  #set up empty dataframe for monitors
       
       for(i in length(specfiles)){
              monitdata<-rbind(monitdata,read.csv(specfiles[i]))
       }
       
       setwd(returndir)     # return to normal working directory
       
       goodobs<-complete.cases(monitdata)
       reslt<-monitdata[goodobs,]
       table(reslt$ID)  #need a dataframe not a table
       
       # now need to corr where ID nobs > threshold
       
}