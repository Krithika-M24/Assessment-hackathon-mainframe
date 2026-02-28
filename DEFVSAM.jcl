//DEFVSAM JOB (ACCT),'DEF VSAM',CLASS=A,MSGCLASS=A,NOTIFY=&SYSUID
//STEP1 EXEC PGM=IDCAMS                                          
//SYSPRINT DD SYSOUT=*                                           
//SYSIN DD *                                                     
     DELETE A016.MASTER.FILE                                     
     DEFINE CLUSTER (NAME(A016.MASTER.FILE) -                    
     INDEXED -                                                   
     KEYS(10 0) -                                                
     RECSZ(80 80) -                                              
     TRACKS(5 5) -                                               
     VOLUMES(USR002)) -                                          
     DATA(NAME(A016.MASTER.FILE.DATA)) -                         
     INDEX(NAME(A016.MASTER.FILE.INDEX))                         
/*                                                               
