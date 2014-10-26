incomplete <- function(directory="specdata", id = 1:332) {
       returndir<-getwd()       # need to come back here
       workindir<-paste(c(getwd(),directory),collapse="/")
       setwd(workindir)
       specfiles<-list.files()  
       monitdata<-data.frame()  #set up empty dataframe for monitors
       
       for(i in id){
              monitdata<-rbind(monitdata,read.csv(specfiles[i]))
       }
      
       setwd(returndir)     # return to normal working directory
       
       goodobs<-complete.cases(monitdata)
       reslt<-monitdata[goodobs,]
	   reslt.df<-data.frame(table(reslt$ID))
	   colnames(reslt.df)<-c("ID","nobs")
	   missing.monitors<-id[id!=reslt.df$ID]
	   
	  
	   #reslt.df
	   
}	