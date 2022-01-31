# MARRIAGE FUNCTI0N

library(matchingR)

MarriageAlg<-function(Mentor,Mentee,MentorNames,MenteeNames){
  MentorM<-as.matrix(Mentor)
View(MentorM)
rownames(MentorM)<-t(MenteeNames)
colnames(MentorM)<-t(MentorNames)
View(MentorM)
MenteeM<-as.matrix(Mentee)
View(MenteeM)
rownames(MenteeM)<-t(MentorNames)
colnames(MenteeM)<-t(MenteeNames)
MenteeOptMatch<-galeShapley.marriageMarket(MenteeM,MentorM)
Prop<-MenteeOptMatch$proposals
Engag<-MenteeOptMatch$engagements
Stability<-galeShapley.checkStability(MenteeM,MentorM,MenteeOptMatch$proposals,MenteeOptMatch$engagements)
Results<-list("Matching result. First Column is Mentee number. Second column relates to Mentor number:"=Prop, "Stable Matching if TRUE:"= Stability)
return(Results)}

#Reading data files

Mentor <- read_csv("Mentor.csv", col_names = FALSE)
Mentee <- read_csv("Mentee.csv", col_names = FALSE)
Yodas <- read_csv("Yodas.csv", col_names = FALSE)
Padawans <- read_csv("Padawans.csv", col_names = FALSE)

Marriage=MarriageAlg(Mentor, Mentee, Yodas, Padawans)
Marriage
