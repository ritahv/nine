mk<- read.csv("mariokart.csv")

#basic plot
plot(mk$start_pr,mk$total_pr)


#library("lattice")

xyplot(total_pr~start_pr | ship_sp, 
       data = mk, auto.key = TRUE)

cor.test(nk$start_pr, nk$total_pr)
nk<-mk

#library(ggplot2)
ggplot(mk, aes(x=start_pr, y=total_pr, color=n_bids, size=duration, shape=as.factor(cond))) +   
  geom_point()+
  labs( title="Mario Kart Sales on E-Bay",
        y= "Total Price",
        x= "Starting Price",
        col="# of Bids", size= "Auction Length", shape= "Condition")



mk<-mk[-65,]
mk<-mk[-20,]

#basic plot
plot(mk$start_pr,mk$total_pr)


#lattice

xyplot(total_pr~start_pr | ship_sp, 
       data = mk, auto.key = TRUE)

#ggplot2
ggplot(mk, aes(x=start_pr, y=total_pr, color=n_bids, size=duration, shape=as.factor(cond))) +   
  geom_point()+
  labs( title="Mario Kart Sales on E-Bay",
        y= "Total Price",
        x= "Starting Price",
        col="# of Bids", size= "Auction Length", shape= "Condition")

