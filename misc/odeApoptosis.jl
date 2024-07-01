#######################################################
# Generated programmatically by CSV2JuliaDiffEq.      #
# http://github.com/SiFTW/CSV2JuliaDiffEq             #
#######################################################
# generated from:
#    reactions file: moduleDefinitionFiles/apop_Bcl2_RCK8/reactions.csv
#    parameters file file: moduleDefinitionFiles/apop_Bcl2_RCK8/parameters.csv
#    rate law file: moduleDefinitionFiles/apop_Bcl2_RCK8/rateLaws.csv
#
# Statistics:
#    Equations:80
#    Parameters:203
#######################################################



function odeFile!(dy,y,p,t)
	DIS=y[1]
	Bid=y[2]
	DIS_Bid=y[3]
	tBid=y[4]
	Bim=y[5]
	DIS_Bim=y[6]
	aBim=y[7]
	Puma=y[8]
	DIS_Puma=y[9]
	aPuma=y[10]
	Noxa=y[11]
	DIS_Noxa=y[12]
	aNoxa=y[13]
	BclxLc=y[14]
	tBid_BclxLc=y[15]
	aBim_BclxLc=y[16]
	Mcl1c=y[17]
	aBim_Mcl1c=y[18]
	aPuma_BclxLc=y[19]
	aPuma_Mcl1c=y[20]
	aNoxa_Mcl1c=y[21]
	Bax=y[22]
	MBax=y[23]
	tBidm=y[24]
	mBim=y[25]
	mPuma=y[26]
	BclxL=y[27]
	Mcl1=y[28]
	MBax_mBim=y[29]
	aBax=y[30]
	MBax_tBidm=y[31]
	MBax_mPuma=y[32]
	tBidm_BclxL=y[33]
	mBim_BclxL=y[34]
	mBim_Mcl1=y[35]
	mPuma_BclxL=y[36]
	mPuma_Mcl1=y[37]
	aBax_BclxL=y[38]
	aBax_Mcl1=y[39]
	MBak=y[40]
	MBak_tBidm=y[41]
	aBak=y[42]
	MBak_mBim=y[43]
	MBak_mPuma=y[44]
	aBak_BclxL=y[45]
	aBak_Mcl1=y[46]
	Bax2=y[47]
	Bax4=y[48]
	Bak2=y[49]
	Bak4=y[50]
	Mito=y[51]
	Bax2_Mito=y[52]
	AMito=y[53]
	Bax4_Mito=y[54]
	Bak2_Mito=y[55]
	Bak4_Mito=y[56]
	Inhib_eff_BclxL=y[57]
	Bcl2t=y[58]
	Inhib_eff_Mcl1=y[59]
	aPuma_Bcl2c=y[60]
	A1c=y[61]
	tBid_A1c=y[62]
	A1=y[63]
	aBax_A1=y[64]
	tBidm_A1=y[65]
	Bim_A1c=y[66]
	mBim_A1=y[67]
	aPuma_A1c=y[68]
	mPuma_A1=y[69]
	aNoxa_A1c=y[70]
	mNoxa=y[71]
	mNoxa_A1=y[72]
	aBak_A1=y[73]
	Bcl2c=y[74]
	Bim_Bcl2c=y[75]
	Bcl2=y[76]
	mBim_Bcl2=y[77]
	aBax_Bcl2=y[78]
	Inhib_eff_Bcl2=y[79]
	mPuma_Bcl2=y[80]
	#Noxa
	dy[11]= -DIS * Noxa * 1.07E-03 + DIS_Noxa * 1.41 + 35581.818 * 1.00E+00 - Noxa * 0.936
	#aBak_Mcl1
	dy[46]= + aBak * Mcl1 * 3.25E-07 - aBak_Mcl1 * 2.60E-04 - aBak_Mcl1 * 0.0675
	#Puma
	dy[8]= -DIS * Puma * 1.07E-03 + DIS_Puma * 1.41 + 6.44E+04 * 1.00E+00 - Puma * 6.80E-01
	#Bak4_Mito
	dy[56]= + Bak4 * Mito * 0.000857142 - Bak4_Mito * 0.06 - Bak4_Mito * 60
	#MBax_mPuma
	dy[32]= + MBax * mPuma * 6.00E-06 - MBax_mPuma * 6.00E-02 - MBax_mPuma * 6.00E+01 - MBax_mPuma * 6.93E-02
	#mNoxa
	dy[71]= -mNoxa * A1 * 5.90E-05 + mNoxa_A1 * 1.00E-03
	#Bax4
	dy[48]= + Bax2 * Bax2 * 0.000857142 - Bax4 * 0.06 - Bax4 * Mito * 0.000857142 + Bax4_Mito * 0.06
	#mPuma_Bcl2
	dy[80]= + mPuma * Bcl2 * 4.91E-07 - mPuma_Bcl2 * 1.57E-04 - mPuma_Bcl2 * 6.75E-02
	#aBax_Mcl1
	dy[39]= + aBax * Mcl1 * 3.25E-07 - aBax_Mcl1 * 2.60E-04 - aBax_Mcl1 * 0.0693
	#Bak2_Mito
	dy[55]= + Bak2 * Mito * 0.000857142 - Bak2_Mito * 0.06 - Bak2_Mito * 60
	#tBidm
	dy[24]= + tBid * 1.16E-02 - tBidm * 1.16E-03 - MBax * tBidm * 0.000006 + MBax_tBidm * 0.06 + MBax_tBidm * 60 - tBidm * BclxL * 6.00E-09 + tBidm_BclxL * 6.00E-02 - MBak * tBidm * 6.00E-06 + MBak_tBidm * 6.00E-02 + MBak_tBidm * 6.00E+01 - tBidm * 0.011552453 - tBidm * A1 * 8.20E-07 + tBidm_A1 * 1.55E-04
	#mBim_BclxL
	dy[34]= + mBim * BclxL * 5.50E-07 - mBim_BclxL * 4.40E-04 - mBim_BclxL * 9.75E-01
	#mBim_Bcl2
	dy[77]= + mBim * Bcl2 * 4.48E-07 - mBim_Bcl2 * 1.12E-04 - mBim_Bcl2 * 0.0693
	#tBidm_A1
	dy[65]= + tBidm * A1 * 8.20E-07 - tBidm_A1 * 1.55E-04 - tBidm_A1 * 0.0675
	#Bax2_Mito
	dy[52]= + Bax2 * Mito * 8.57E-04 - Bax2_Mito * 6.00E-02 - Bax2_Mito * 6.00E+01
	#AMito
 ##############
	dy[53]= + Bax2_Mito * 6.00E+01 + Bax4_Mito * 60 + Bak2_Mito * 60 + Bak4_Mito * 60 - AMito * 0.000115525
 #####################################
	#aBax_Bcl2
	dy[78]= + aBax * Bcl2 * 3.24E-05 - aBax_Bcl2 * 3.36E-04 - aBax_Bcl2 * 0.0693
	#aPuma
	dy[10]= + DIS_Puma * 60 - aPuma * BclxLc * 8.63E-05 + aPuma_BclxLc * 4.40E-04 - aPuma * Mcl1c * 1.63E-04 + aPuma_Mcl1c * 5.21E-03 - aPuma * 1.16E-02 + mPuma * 1.16E-03 - aPuma * 6.80E-01 - aPuma * A1c * 5.90E-03 + aPuma_A1c * 5.00E-04 - aPuma * Bcl2c * 4.91E-05 + aPuma_Bcl2c * 1.57E-04
	#A1
	dy[63]= -aBax * A1 * 0.0000014 + aBax_A1 * 0.0000364 + 1 * 1.00E+00 * Bcl2t - A1 * 0.001155245 - tBidm * A1 * 8.20E-07 + tBidm_A1 * 1.55E-04 - mBim * A1 * 7.80E-06 + mBim_A1 * 3.95E-05 - mPuma * A1 * 5.90E-05 + mPuma_A1 * 5.00E-04 - mNoxa * A1 * 5.90E-05 + mNoxa_A1 * 1.00E-03 - aBak * A1 * 6.03E-07 + aBak_A1 * 2.60E-04 + A1c * 0.0115525 - A1 * 0.00115525
	#Inhib_eff_Bcl2
	dy[79]=0
	#DIS_Bid
	dy[3]= + DIS * Bid * 6.00E-06 - DIS_Bid * 0.06 - DIS_Bid * 60
	#aBak
    #######################################################################################
	dy[42]= + MBak_tBidm * 6.00E+01 + MBak_mBim * 6.00E+01 + MBak_mPuma * 6.00E+01 - aBak * BclxL * 5.50E-06 + aBak_BclxL * 4.40E-04 - aBak * Mcl1 * 3.25E-07 + aBak_Mcl1 * 2.60E-04 - aBak * aBak * 0.000857142 - aBak * aBak * 0.000857142 + Bak2 * 0.06 + Bak2 * 0.06 - aBak * A1 * 6.03E-07 + aBak_A1 * 2.60E-04
	#######################################################################################
    #Bid
	dy[2]= -DIS * Bid * 6.00E-06 + DIS_Bid * 0.06 + 427.0945418 * 1.00E+00 - Bid * 0.011552453
	#Bim_A1c
	dy[66]= + Bim * A1c * 7.80E-04 - Bim_A1c * 3.95E-05 - Bim_A1c * 0.0675
	#Bak2
	dy[49]= + aBak * aBak * 0.000857142 - Bak2 * 0.06 - Bak2 * Bak2 * 0.000857142 - Bak2 * Bak2 * 0.000857142 + Bak4 * 0.06 + Bak4 * 0.06 - Bak2 * Mito * 0.000857142 + Bak2_Mito * 0.06
	#aBax_BclxL
	dy[38]= + aBax * BclxL * 5.18E-07 - aBax_BclxL * 4.40E-04 - aBax_BclxL * 0.003955245
	#aNoxa_Mcl1c
	dy[21]= + aNoxa * Mcl1c * 1.68E-05 - aNoxa_Mcl1c * 1.39E-03 - aNoxa_Mcl1c * 3.75E-02
	#aBim_Mcl1c
	dy[18]= + aBim * Mcl1c * 7.80E-06 - aBim_Mcl1c * 2.17E-03 - aBim_Mcl1c * 0.993
	#Mito
	dy[51]= -Bax2 * Mito * 8.57E-04 + Bax2_Mito * 6.00E-02 - Bax4 * Mito * 0.000857142 + Bax4_Mito * 0.06 - Bak2 * Mito * 0.000857142 + Bak2_Mito * 0.06 - Bak4 * Mito * 0.000857142 + Bak4_Mito * 0.06 + AMito * 0.000115525
	#DIS_Noxa
	dy[12]= + DIS * Noxa * 1.07E-03 - DIS_Noxa * 1.41 - DIS_Noxa * 60
	#aPuma_A1c
	dy[68]= + aPuma * A1c * 5.90E-03 - aPuma_A1c * 5.00E-04 - aPuma_A1c * 6.93E-02
	#aBim
	dy[7]= + DIS_Bim * 60 - aBim * BclxLc * 5.50E-05 + aBim_BclxLc * 4.40E-04 - aBim * Mcl1c * 7.80E-06 + aBim_Mcl1c * 2.17E-03 - aBim * 1.16E-02 + mBim * 1.16E-03 - aBim * 6.91E-01
	#BclxLc
	dy[14]= -tBid * BclxLc * 0.00006 + tBid_BclxLc * 0.06 - aBim * BclxLc * 5.50E-05 + aBim_BclxLc * 4.40E-04 - aPuma * BclxLc * 8.63E-05 + aPuma_BclxLc * 4.40E-04 - BclxLc * 0.01155245 + BclxL * 0.00115525 + 6076.045482 * 1.00E+00 * Inhib_eff_BclxL - BclxLc * 0.011552453
	#tBid
	dy[4]= + DIS_Bid * 60 - tBid * BclxLc * 0.00006 + tBid_BclxLc * 0.06 - tBid * 1.16E-02 + tBidm * 1.16E-03 - tBid * 0.011552453 - tBid * A1c * 8.20E-04 + tBid_A1c * 0.000155
	#aBax
	dy[30]= + MBax_mBim * 6.00E+01 + MBax_tBidm * 60 + MBax_mPuma * 6.00E+01 - aBax * BclxL * 5.18E-07 + aBax_BclxL * 4.40E-04 - aBax * Mcl1 * 3.25E-07 + aBax_Mcl1 * 2.60E-04 - aBax * aBax * 0.000857142 - aBax * aBax * 0.000857142 + Bax2 * 0.06 + Bax2 * 0.06 - aBax * A1 * 0.0000014 + aBax_A1 * 0.0000364 - aBax * Bcl2 * 3.24E-05 + aBax_Bcl2 * 3.36E-04
	#DIS
	dy[1]= -DIS * Bid * 6.00E-06 + DIS_Bid * 0.06 + DIS_Bid * 60 - DIS * Bim * 6.00E-06 + DIS_Bim * 0.06 + DIS_Bim * 60 - DIS * Puma * 1.07E-03 + DIS_Puma * 1.41 + DIS_Puma * 60 - DIS * Noxa * 1.07E-03 + DIS_Noxa * 1.41 + DIS_Noxa * 60 + 0.0611505 * 1.00E+00 - DIS * 0.001444057
	#aBax_A1
	dy[64]= + aBax * A1 * 0.0000014 - aBax_A1 * 0.0000364 - aBax_A1 * 0.0675
	#tBid_BclxLc
	dy[15]= + tBid * BclxLc * 0.00006 - tBid_BclxLc * 0.06 - tBid_BclxLc * 0.011552453
	#Bax4_Mito
	dy[54]= + Bax4 * Mito * 0.000857142 - Bax4_Mito * 0.06 - Bax4_Mito * 60
	#MBax_tBidm
	dy[31]= + MBax * tBidm * 0.000006 - MBax_tBidm * 0.06 - MBax_tBidm * 60 - MBax_tBidm * 6.75E-02
	#Bim_Bcl2c
	dy[75]= + Bim * Bcl2c * 4.48E-05 - Bim_Bcl2c * 1.12E-04 - Bim_Bcl2c * 6.75E-02
	#mNoxa_A1
	dy[72]= + mNoxa * A1 * 5.90E-05 - mNoxa_A1 * 1.00E-03 - mNoxa_A1 * 6.93E-02
	#MBak
	dy[40]= -MBak * tBidm * 6.00E-06 + MBak_tBidm * 6.00E-02 - MBak * mBim * 2.07E-03 + MBak_mBim * 6.00E-02 - MBak * mPuma * 6.00E-06 + MBak_mPuma * 6.00E-02 + 7.95E+04 * 1.00E+00 - MBak * 6.82E-01
	#mBim_Mcl1
	dy[35]= + mBim * Mcl1 * 7.80E-06 - mBim_Mcl1 * 2.17E-03 - mBim_Mcl1 * 0.993
	#Bak4
	dy[50]= + Bak2 * Bak2 * 0.000857142 - Bak4 * 0.06 - Bak4 * Mito * 0.000857142 + Bak4_Mito * 0.06
	#MBak_mPuma
	dy[44]= + MBak * mPuma * 6.00E-06 - MBak_mPuma * 6.00E-02 - MBak_mPuma * 6.00E+01 - MBak_mPuma * 6.93E-02
	#mPuma_BclxL
	dy[36]= + mPuma * BclxL * 8.63E-07 - mPuma_BclxL * 4.40E-04 - mPuma_BclxL * 6.75E-02
	#Bax
	dy[22]= -Bax * 0.0116 + MBax * 0.116 + 8856.4059 * 1.00E+00 - Bax * 0.011552453
	#MBak_mBim
	dy[43]= + MBak * mBim * 2.07E-03 - MBak_mBim * 6.00E-02 - MBak_mBim * 6.00E+01 - MBak_mBim * 6.93E-02
	#Bim
	dy[5]= -DIS * Bim * 6.00E-06 + DIS_Bim * 0.06 + 7.05E+03 * 1.00E+00 - Bim * 6.91E-01 - Bim * A1c * 7.80E-04 + Bim_A1c * 3.95E-05 - Bim * Bcl2c * 4.48E-05 + Bim_Bcl2c * 1.12E-04
	#Inhib_eff_Mcl1
	dy[59]=0
	#Mcl1c
	dy[17]= -aBim * Mcl1c * 7.80E-06 + aBim_Mcl1c * 2.17E-03 - aPuma * Mcl1c * 1.63E-04 + aPuma_Mcl1c * 5.21E-03 - aNoxa * Mcl1c * 1.68E-05 + aNoxa_Mcl1c * 1.39E-03 - Mcl1c * 0.0115525 + Mcl1 * 0.00115525 + 30374.8 * 1.00E+00 * Inhib_eff_Mcl1 - Mcl1c * 0.468
	#MBax
	dy[23]= + Bax * 0.0116 - MBax * 0.116 - MBax * mBim * 2.07E-03 + MBax_mBim * 6.00E-02 - MBax * tBidm * 0.000006 + MBax_tBidm * 0.06 - MBax * mPuma * 6.00E-06 + MBax_mPuma * 6.00E-02 - MBax * 0.11552453
	#aPuma_BclxLc
	dy[19]= + aPuma * BclxLc * 8.63E-05 - aPuma_BclxLc * 4.40E-04 - aPuma_BclxLc * 6.75E-02
	#aPuma_Mcl1c
	dy[20]= + aPuma * Mcl1c * 1.63E-04 - aPuma_Mcl1c * 5.21E-03 - aPuma_Mcl1c * 6.93E-02
	#BclxL
	dy[27]= + BclxLc * 0.01155245 - BclxL * 0.00115525 - tBidm * BclxL * 6.00E-09 + tBidm_BclxL * 6.00E-02 - mBim * BclxL * 5.50E-07 + mBim_BclxL * 4.40E-04 - mPuma * BclxL * 8.63E-07 + mPuma_BclxL * 4.40E-04 - aBax * BclxL * 5.18E-07 + aBax_BclxL * 4.40E-04 - aBak * BclxL * 5.50E-06 + aBak_BclxL * 4.40E-04 + 1 * 1.00E+00 * Bcl2t - BclxL * 0.01155245
	#mBim
	dy[25]= + aBim * 1.16E-02 - mBim * 1.16E-03 - MBax * mBim * 2.07E-03 + MBax_mBim * 6.00E-02 + MBax_mBim * 6.00E+01 - mBim * BclxL * 5.50E-07 + mBim_BclxL * 4.40E-04 - mBim * Mcl1 * 7.80E-06 + mBim_Mcl1 * 2.17E-03 - MBak * mBim * 2.07E-03 + MBak_mBim * 6.00E-02 + MBak_mBim * 6.00E+01 - mBim * 6.91E-01 - mBim * A1 * 7.80E-06 + mBim_A1 * 3.95E-05 - mBim * Bcl2 * 4.48E-07 + mBim_Bcl2 * 1.12E-04
	#aPuma_Bcl2c
	dy[60]= -aPuma_Bcl2c * 6.75E-02 + aPuma * Bcl2c * 4.91E-05 - aPuma_Bcl2c * 1.57E-04 - aPuma_Bcl2c * 6.75E-02
	#MBax_mBim
	dy[29]= + MBax * mBim * 2.07E-03 - MBax_mBim * 6.00E-02 - MBax_mBim * 6.00E+01 - MBax_mBim * 6.93E-02
	#aNoxa_A1c
	dy[70]= + aNoxa * A1c * 5.90E-03 - aNoxa_A1c * 1.00E-03 - aNoxa_A1c * 6.93E-02
	#aBim_BclxLc
	dy[16]= + aBim * BclxLc * 5.50E-05 - aBim_BclxLc * 4.40E-04 - aBim_BclxLc * 9.93E-01
	#aNoxa
	dy[13]= + DIS_Noxa * 60 - aNoxa * Mcl1c * 1.68E-05 + aNoxa_Mcl1c * 1.39E-03 - aNoxa * 0.936 - aNoxa * A1c * 5.90E-03 + aNoxa_A1c * 1.00E-03
	#tBid_A1c
	dy[62]= + tBid * A1c * 8.20E-04 - tBid_A1c * 0.000155 - tBid_A1c * 0.0693
	#Bax2
	dy[47]= + aBax * aBax * 0.000857142 - Bax2 * 0.06 - Bax2 * Bax2 * 0.000857142 - Bax2 * Bax2 * 0.000857142 + Bax4 * 0.06 + Bax4 * 0.06 - Bax2 * Mito * 8.57E-04 + Bax2_Mito * 6.00E-02
	#Bcl2
	dy[76]= -mBim * Bcl2 * 4.48E-07 + mBim_Bcl2 * 1.12E-04 - aBax * Bcl2 * 3.24E-05 + aBax_Bcl2 * 3.36E-04 + 1 * 1.00E+00 * Bcl2t - Bcl2 * 0.001155245 - mPuma * Bcl2 * 4.91E-07 + mPuma_Bcl2 * 1.57E-04 + Bcl2c * 0.0115525 - Bcl2 * 0.00115525
	#Bcl2c
	dy[74]= -Bim * Bcl2c * 4.48E-05 + Bim_Bcl2c * 1.12E-04 + 42.6407 * 1.00E+00 * Inhib_eff_Bcl2 - Bcl2c * 0.6912 - aPuma * Bcl2c * 4.91E-05 + aPuma_Bcl2c * 1.57E-04 - Bcl2c * 0.0115525 + Bcl2 * 0.00115525
	#aBak_A1
	dy[73]= + aBak * A1 * 6.03E-07 - aBak_A1 * 2.60E-04 - aBak_A1 * 0.0675
	#mBim_A1
	dy[67]= + mBim * A1 * 7.80E-06 - mBim_A1 * 3.95E-05 - mBim_A1 * 0.0675
	#aBak_BclxL
	dy[45]= + aBak * BclxL * 5.50E-06 - aBak_BclxL * 4.40E-04 - aBak_BclxL * 0.1493
	#Bcl2t
	dy[58]=0
	#Inhib_eff_BclxL
	dy[57]=0
	#mPuma
	dy[26]= + aPuma * 1.16E-02 - mPuma * 1.16E-03 - MBax * mPuma * 6.00E-06 + MBax_mPuma * 6.00E-02 + MBax_mPuma * 6.00E+01 - mPuma * BclxL * 8.63E-07 + mPuma_BclxL * 4.40E-04 - mPuma * Mcl1 * 1.63E-06 + mPuma_Mcl1 * 5.21E-03 - MBak * mPuma * 6.00E-06 + MBak_mPuma * 6.00E-02 + MBak_mPuma * 6.00E+01 - mPuma * 6.80E-01 - mPuma * A1 * 5.90E-05 + mPuma_A1 * 5.00E-04 - mPuma * Bcl2 * 4.91E-07 + mPuma_Bcl2 * 1.57E-04
	#DIS_Puma
	dy[9]= + DIS * Puma * 1.07E-03 - DIS_Puma * 1.41 - DIS_Puma * 60
	#A1c
    ##################################################################################################################################################################################################################################################################################
	dy[61]= -tBid * A1c * 8.20E-04 + tBid_A1c * 0.000155 + 17.35 * 1.00E+00 - A1c * 0.936 - Bim * A1c * 7.80E-04 + Bim_A1c * 3.95E-05 - aPuma * A1c * 5.90E-03 + aPuma_A1c * 5.00E-04 - aNoxa * A1c * 5.90E-03 + aNoxa_A1c * 1.00E-03 - A1c * 0.0115525 + A1 * 0.00115525
    ##################################################################################################################################################################################################################################################################################
	#tBidm_BclxL
	dy[33]= + tBidm * BclxL * 6.00E-09 - tBidm_BclxL * 6.00E-02 - tBidm_BclxL * 0.011552453
	#mPuma_Mcl1
	dy[37]= + mPuma * Mcl1 * 1.63E-06 - mPuma_Mcl1 * 5.21E-03 - mPuma_Mcl1 * 6.93E-02
	#mPuma_A1
	dy[69]= + mPuma * A1 * 5.90E-05 - mPuma_A1 * 5.00E-04 - mPuma_A1 * 6.93E-02
	#MBak_tBidm
	dy[41]= + MBak * tBidm * 6.00E-06 - MBak_tBidm * 6.00E-02 - MBak_tBidm * 6.00E+01 - MBak_tBidm * 6.75E-02
	#DIS_Bim
	dy[6]= + DIS * Bim * 6.00E-06 - DIS_Bim * 0.06 - DIS_Bim * 60
	#Mcl1
	dy[28]= + Mcl1c * 0.0115525 - Mcl1 * 0.00115525 - mBim * Mcl1 * 7.80E-06 + mBim_Mcl1 * 2.17E-03 - mPuma * Mcl1 * 1.63E-06 + mPuma_Mcl1 * 5.21E-03 - aBax * Mcl1 * 3.25E-07 + aBax_Mcl1 * 2.60E-04 - aBak * Mcl1 * 3.25E-07 + aBak_Mcl1 * 2.60E-04 + 1 * 1.00E+00 * Bcl2t - Mcl1 * 0.01155245
end