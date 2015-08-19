stealchicken3<-read.csv("c://Users//Benjamin//Desktop//stealchicken3.csv")
colnames(stealchicken3)<-c('user_id','item_id','behavior_type','user_geohash','item_category')
count<-0
item_level<-unique(stealchicken3$item_id)
n<-length(item_level)
arr<-1:length(item_level)
x<-matrix(0,nrow=n,ncol=n)
#x<-sparseMatrix(item_level,item_level)

while (count<length(item_level)) {
  temp1<-grep(stealchicken3[count+1,1],stealchicken3$user_id)
  temp2<-length(temp1)
  if (temp2>1){
    for (i in 1:(temp2-1)){
      for (j in (i+1):temp2){
        temp3<-grep(temp1[i],arr)
        temp4<-grep(temp1[j],arr)
        nodx<-temp3[1]
        nody<-temp4[1]
        x[nodx,nody]=x[nodx,nody]+1
#       if (temp3==temp4){
#          x[temp3,temp4]=x[temp3,temp4]+0
#       }
#       else{
#          x[temp3,temp4]=x[temp3,temp4]+1
#        }
      }
    }
  }
 
  count=count+temp2
  
}