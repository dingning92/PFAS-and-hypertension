#################################       PFAS and Hypertension in SWAN       ######################################
#################################       R1 Hypertension                      ######################################
##########################             qgcomp in sensitivity analysis          ######################################

library("qgcomp")
library("knitr")
library("ggplot2")

setwd("~/PFAS and blood pressure")


# Read data
dat_qgcomp<-read.csv("ers.csv")



# Associations between PFAS and hypertension
qc_survfit_full<-qgcomp.cox.boot(survival::Surv(Y, htn) ~ lg_n_pfos+lg_sm_pfos+lg_n_pfoa+lg_pfna2+lg_pfhxs+lg_et_pfosa_acoh+lg_me_pfosa_acoh2
                                 +chinese+japanese+white+boston+oakland+la+pittsburgh+high_school+college+post_college
                                 +past_smoke+current_smoke+psmkcat_1+psmkcat_2+med_alcohol+high_alcohol+nat_post
                                 +late_peri+early_peri+pre_meno+ht_meno+some_hard+not_hard+totscr_bl_c+dtt_kcal_bl_c,
                                 expnms = pfas_names, data=dat_qgcomp, q=3, ewights=weight, MCsize=1000, parallel=TRUE)

qc_survfit_full
exp(qc_survfit_full$coef)
exp(qc_survfit_full$ci.coef)
exp(qc_survfit_full$coef*2)
exp(qc_survfit_full$ci.coef*2)
plot(qc_survfit_full)
qc_survfit_full$fit
plot(qc_survfit_full)  