# PFAS-and-hypertension

Manuscript: Exposure to Perfluoroalkyl and Polyfluoroalkyl Substances and Incidence of Hypertension in Multi-Racial/Ethnic Women: The Study of Women’s Health Across the Nation 1999-2017
Authors: Ning Ding, Carrie A. Karvonen-Gutierrez, Bhramar Mukherjee, Siobán D. Harlow, Sung Kyun Park


We utilized quantile g-computation to evaluate the overall effects of exposure to PFAS mixtures on incident hypertension. Quantile g-computation is a valuable tool designed for estimating the joint effects of correlated chemical mixtures. This approach combined the inferential ability of weighted quantile sum (WQS) regression50 with the flexibility of g-computation, a method of causal effect estimation. In the current study, all PFAS mixture components were first transformed into tertiles. Then a Cox PH regression was fit for PFAS, covariates and incident hypertension, which defined the weights for each PFAS. Weights represented the association between each PFAS and incident hypertension. The sum of weights was constructed as the quantile g-computation estimator. The mixture effect of PFAS was calculated using the quantile g-computation estimator and interpreted as the HR and 95% CI per tertile increase in all PFAS concentrations, adjusting for covariates described above for the individual PFAS models. To be consistent with the individual associations, we calculated and interpreted HRs comparing the highest and second tertiles to the lowest tertile. The mixture analyses were conducted in the R package ‘qgcomp’. 

