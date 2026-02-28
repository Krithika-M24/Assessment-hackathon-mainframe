//LOADJCL  JOB (ACCT),'LOAD KSDS',CLASS=A,MSGCLASS=A,NOTIFY=&SYSUID      
//*----------------------------------------------------------------*     
//* STEP 1: LOAD SAMPLE DATA INTO THE KSDS                         *     
//*----------------------------------------------------------------*     
//STEP1    EXEC PGM=IDCAMS                                               
//SYSPRINT DD SYSOUT=*                                                   
//SYSIN    DD *                                                          
  REPRO INFILE(DATAIN) OUTDATASET(A016.MASTER.FILE)                      
/*                                                                       
//DATAIN   DD *                                                          
1234567890S000500000                                                     
2345678901C001500000                                                     
3456789012S000010000                                                     
/*                          
