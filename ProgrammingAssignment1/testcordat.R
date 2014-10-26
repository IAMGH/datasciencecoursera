testcordat <- function(directory="specdata", id = 90:99) {
       
       returndir<-getwd()
       workindir<-paste(c(getwd(),directory),collapse="/")
       setwd(workindir)
       
       specfiles<-list.files()  # poss use full.names=TRUE instead
      # note first column is text as second column is text
       
       monitdata<-data.frame()  #set up empty dataframe for monitors
       
       for(i in id){
              monitdata<-rbind(monitdata,read.csv(specfiles[i]))
       }
      
       setwd(returndir)
       
       monitdata
       
}