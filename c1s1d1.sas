/* c1s1d1: Descriptive Statistics */

options nodate nonumber;

libname mban5110 'c:\Schulich\mban5110';

/* Part A */
title1 'Partial Listing of the SAT Data Set';
proc print data=mban5110.testscores(obs=10);
run;

/* Part B */
title1 'Descriptive Statistics Using PROC MEANS';
proc means data=mban5110.testscores;
    var SATScore;
run;

/* Part C */    
title1 'Selected Descriptive Statistics for SAT Scores';
proc means data=mban5110.testscores maxdec=2 n mean median std q1 q3 qrange;
    var SATScore;
run;
