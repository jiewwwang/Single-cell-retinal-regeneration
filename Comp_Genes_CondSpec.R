##source('F:/RetReg/Programs/Comp_Genes_CondSpec.R')
setwd("F:/RetReg/Data")

###compare gene modules from different conditions
Spec1<-'mm'; Seq1<-'RNA'; Cond1<-c('dev','ld'); Fc1 <- 1; Fdr1 <- 0.01; minExp1 <- 5;
Fdr2 <- strsplit(as.character(Fdr1),'\\.')
Cont1 <- read.table(paste('RNA/',Spec1,Seq1,Cond1[1],'_Fc',Fc1,'Fdr',Fdr2[[1]][2],'_DiffGFPpp_Rat_G0.txt',sep=''), header=T, row.names=1, sep='\t');
if(grepl('_v\\d+_',Cond1[2],perl=T)){
  RNA1 <- read.table(paste('scRNA/',Cond1[2],'_RpcMg_monocle_psudotime_diffgeneG.txt',sep=''), header=T, row.names=1, sep='\t');
}else{
  RNA1 <- read.table(paste('RNA/',Spec1,Seq1,Cond1[2],'_Fc',Fc1,'Fdr',Fdr2[[1]][2],'_DiffGFPpp_Rat_G0.txt',sep=''), header=T, row.names=1, sep='\t');
}

uCont1 <- sort(unique(Cont1$Group)); uRNA1 <- sort(unique(RNA1$Group));
tRNA1 <- c(table(RNA1$Group),rep(1,length(uRNA1))); Ind1 <- c()
for(i in 1:length(uRNA1)){Ind1 <- c(Ind1,i,i+length(uRNA1))}
Int12<-c(dim(Cont1)[1],tRNA1[Ind1]);
for(i in 1:length(uCont1)){Cont2 <- Cont1[Cont1$Group==uCont1[i],];
  for(j in 1:length(uRNA1)){RNA2 <- RNA1[RNA1$Group==uRNA1[j],];
    Num1 <- length(intersect(rownames(Cont2),rownames(RNA2)))
    if(j==1){ Int11 <- c(dim(Cont2)[1],Num1,200*Num1/(dim(Cont2)[1]+dim(RNA2)[1]))
    }else{Int11 <- c(Int11,Num1,200*Num1/(dim(Cont2)[1]+dim(RNA2)[1]))}
    if(i==1&j==1){Nam1 <- c('all',paste(Cond1[2],uRNA1[j],sep=''), paste('Rat',Cond1[2],uRNA1[j],sep=''))
    }else if(i==1){Nam1 <- c(Nam1, paste(Cond1[2],uRNA1[j],sep=''), paste('Rat',Cond1[2],uRNA1[j],sep=''))}
  }
  Int12 <- rbind(Int12,Int11);
}
rownames(Int12) <- paste(Cond1[1],c('all',uCont1),sep='');
colnames(Int12) <- Nam1
if(grepl('_v\\d+_',Cond1[2],perl=T)){
  write.table(Int12,paste('scRNA/',Cond1[2],'_',Spec1,Seq1,Cond1[1],'_Fc',Fc1,'Fdr',Fdr2[[1]][2],'_DiffGFPpp_Rat_G0_Int.txt',sep=''),sep='\t',quote=F)
}else{write.table(Int12,paste('RNA/',Spec1,Seq1,Cond1[1],Cond1[2],'_Fc',Fc1,'Fdr',Fdr2[[1]][2],'_DiffGFPpp_Rat_G0_Int.txt',sep=''),sep='\t',quote=F)}
