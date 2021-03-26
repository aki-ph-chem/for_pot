

##############SCRATCH############################

x_1 = c('t1.gjf,','o1.o')

x_2 = c('t2.gjf,','o2.o')

x_1_2 = rbind(x_1,x_2)

x_1_2




write.table(x_1_2,"C:/Users/simiz/Desktop/b_test/x_1_2.txt",col.names = F,row.names = F,quote = F)




x = c("t1.gjf,","t2.gjf,","t3.gjf,")
y = c("o1.o","o2.o","o3.o")

xy = cbind(x,y)

xy

write.table(xy,"C:/Users/simiz/Desktop/b_test/test_3.bcf",col.names = F,row.names = F,quote = F)

#########################################

library(stringr)
library(dplyr)


file_name_0 = "t.gjf"  

Num_of_jobs = 10         

Num_vec = 1:Num_of_jobs



file_name_1 = stringr::str_split(file_name_0,pattern = ".gjf")

file_name_base = file_name_1[[1]][1] 



file_name_2 = stringr::str_c(file_name_base,Num_vec,sep = "_")



input_file = stringr::str_c(file_name_2,".gjf,")

out_put_file = stringr::str_c(file_name_2,".o")



batch = cbind(input_file,out_put_file)

PATH = "C:/Users/simiz/Desktop/b_test/batch.bcf"

write.table(batch,PATH,col.names = F,row.names = F,quote = F)



















