#######################################################
# Generated programmatically by CSV2JuliaDiffEq.      #
# http://github.com/SiFTW/CSV2JuliaDiffEq             #
#######################################################
# generated from:
#    reactions file: moduleDefinitionFiles/U2932/reactions.csv
#    parameters file file: moduleDefinitionFiles/U2932/parameters.csv
#    rate law file: moduleDefinitionFiles/U2932/rateLaws.csv
#
# Statistics:
#    Equations:67
#    Parameters:166
#######################################################



function odeApoptosis(dy,y,p,t)
	DIS=maximum([y[1],0])
	Bid=maximum([y[2],0])
	DIS_Bid=maximum([y[3],0])
	tBid=maximum([y[4],0])
	Bim=maximum([y[5],0])
	DIS_Bim=maximum([y[6],0])
	aBim=maximum([y[7],0])
	Puma=maximum([y[8],0])
	DIS_Puma=maximum([y[9],0])
	aPuma=maximum([y[10],0])
	Noxa=maximum([y[11],0])
	DIS_Noxa=maximum([y[12],0])
	aNoxa=maximum([y[13],0])
	BclxLc=maximum([y[14],0])
	tBid_BclxLc=maximum([y[15],0])
	aBim_BclxLc=maximum([y[16],0])
	Bcl2c=maximum([y[17],0])
	aBim_Bcl2c=maximum([y[18],0])
	Mcl1c=maximum([y[19],0])
	aBim_Mcl1c=maximum([y[20],0])
	aPuma_BclxLc=maximum([y[21],0])
	aPuma_Bcl2c=maximum([y[22],0])
	aPuma_Mcl1c=maximum([y[23],0])
	aNoxa_Mcl1c=maximum([y[24],0])
	Bax=maximum([y[25],0])
	MBax=maximum([y[26],0])
	tBidm=maximum([y[27],0])
	mBim=maximum([y[28],0])
	mPuma=maximum([y[29],0])
	BclxL=maximum([y[30],0])
	Bcl2=maximum([y[31],0])
	Mcl1=maximum([y[32],0])
	MBax_mBim=maximum([y[33],0])
	aBax=maximum([y[34],0])
	MBax_tBidm=maximum([y[35],0])
	MBax_mPuma=maximum([y[36],0])
	tBidm_BclxL=maximum([y[37],0])
	mBim_BclxL=maximum([y[38],0])
	mBim_Bcl2=maximum([y[39],0])
	mBim_Mcl1=maximum([y[40],0])
	mPuma_BclxL=maximum([y[41],0])
	mPuma_Bcl2=maximum([y[42],0])
	mPuma_Mcl1=maximum([y[43],0])
	aBax_BclxL=maximum([y[44],0])
	aBax_Bcl2=maximum([y[45],0])
	aBax_Mcl1=maximum([y[46],0])
	MBak=maximum([y[47],0])
	MBak_tBidm=maximum([y[48],0])
	aBak=maximum([y[49],0])
	MBak_mBim=maximum([y[50],0])
	MBak_mPuma=maximum([y[51],0])
	aBak_BclxL=maximum([y[52],0])
	aBak_Mcl1=maximum([y[53],0])
	Bax2=maximum([y[54],0])
	Bax4=maximum([y[55],0])
	Bak2=maximum([y[56],0])
	Bak4=maximum([y[57],0])
	Mito=maximum([y[58],0])
	Bax2_Mito=maximum([y[59],0])
	AMito=maximum([y[60],0])
	Bax4_Mito=maximum([y[61],0])
	Bak2_Mito=maximum([y[62],0])
	Bak4_Mito=maximum([y[63],0])
	Inhib_eff_BclxL=maximum([y[64],0])
	Bcl2t=maximum([y[65],0])
	Inhib_eff_Bcl2=maximum([y[66],0])
	Inhib_eff_Mcl1=maximum([y[67],0])
	#DIS
	dy[1]= -DIS * Bid * 6.00E-06 + DIS_Bid * 0.06 + DIS_Bid * 60 - DIS * Bim * 6.00E-06 + DIS_Bim * 0.06 + DIS_Bim * 60 - DIS * Puma * 1.07E-03 + DIS_Puma * 1.41 + DIS_Puma * 60 - DIS * Noxa * 1.07E-03 + DIS_Noxa * 1.41 + DIS_Noxa * 60 + 0.0611505 * 1.00E+00 - DIS * 0.001444057
	#Bid
	dy[2]= -DIS * Bid * 6.00E-06 + DIS_Bid * 0.06 + 1.770945418 * 1.00E+00 - Bid * 0.011552453
	#DIS_Bid
	dy[3]= + DIS * Bid * 6.00E-06 - DIS_Bid * 0.06 - DIS_Bid * 60
	#tBid
	dy[4]= + DIS_Bid * 60 - tBid * BclxLc * 0.00006 + tBid_BclxLc * 0.06 - tBid * 1.16E-02 + tBidm * 1.16E-03 - tBid * 0.011552453
	#Bim
	dy[5]= -DIS * Bim * 6.00E-06 + DIS_Bim * 0.06 + 1.77E+04 * 1.00E+00 - Bim * 6.91E-01
	#DIS_Bim
	dy[6]= + DIS * Bim * 6.00E-06 - DIS_Bim * 0.06 - DIS_Bim * 60
	#aBim
	dy[7]= + DIS_Bim * 60 - aBim * BclxLc * 5.50E-06 + aBim_BclxLc * 4.40E-04 - aBim * Bcl2c * 4.48E-06 + aBim_Bcl2c * 1.12E-04 - aBim * Mcl1c * 7.80E-07 + aBim_Mcl1c * 2.17E-03 - aBim * 1.16E-02 + mBim * 1.16E-03 - aBim * 6.91E-01
	#Puma
	dy[8]= -DIS * Puma * 1.07E-03 + DIS_Puma * 1.41 + 2.36E+03 * 1.00E+00 - Puma * 6.80E-01
	#DIS_Puma
	dy[9]= + DIS * Puma * 1.07E-03 - DIS_Puma * 1.41 - DIS_Puma * 60
	#aPuma
	dy[10]= + DIS_Puma * 60 - aPuma * BclxLc * 8.63E-05 + aPuma_BclxLc * 4.40E-04 - aPuma * Bcl2c * 4.91E-05 + aPuma_Bcl2c * 1.57E-04 - aPuma * Mcl1c * 1.63E-04 + aPuma_Mcl1c * 5.21E-03 - aPuma * 1.16E-02 + mPuma * 1.16E-03 - aPuma * 6.80E-01
	#Noxa
	dy[11]= -DIS * Noxa * 1.07E-03 + DIS_Noxa * 1.41 + 55818.18 * 1.00E+00 - Noxa * 0.936
	#DIS_Noxa
	dy[12]= + DIS * Noxa * 1.07E-03 - DIS_Noxa * 1.41 - DIS_Noxa * 60
	#aNoxa
	dy[13]= + DIS_Noxa * 60 - aNoxa * Mcl1c * 1.68E-05 + aNoxa_Mcl1c * 1.39E-03 - aNoxa * 9.36E-01
	#BclxLc
	dy[14]= -tBid * BclxLc * 0.00006 + tBid_BclxLc * 0.06 - aBim * BclxLc * 5.50E-06 + aBim_BclxLc * 4.40E-04 - aPuma * BclxLc * 8.63E-05 + aPuma_BclxLc * 4.40E-04 - BclxLc * 1.16E-02 + BclxL * 0.00115525 + 2.46E+00 * 1.00E+00 * Inhib_eff_BclxL - BclxLc * 1.16E-02
	#tBid_BclxLc
	dy[15]= + tBid * BclxLc * 0.00006 - tBid_BclxLc * 0.06 - tBid_BclxLc * 1.16E-02
	#aBim_BclxLc
	dy[16]= + aBim * BclxLc * 5.50E-06 - aBim_BclxLc * 4.40E-04 - aBim_BclxLc * 9.93E-01
	#Bcl2c
	dy[17]= -aBim * Bcl2c * 4.48E-06 + aBim_Bcl2c * 1.12E-04 - aPuma * Bcl2c * 4.91E-05 + aPuma_Bcl2c * 1.57E-04 - Bcl2c * 0.0115525 + Bcl2 * 0.00115525 + 4.13E+03 * 1.00E+00 * Inhib_eff_Bcl2 - Bcl2c * 6.91E-01
	#aBim_Bcl2c
	dy[18]= + aBim * Bcl2c * 4.48E-06 - aBim_Bcl2c * 1.12E-04 - aBim_Bcl2c * 6.75E-02
	#Mcl1c
	dy[19]= -aBim * Mcl1c * 7.80E-07 + aBim_Mcl1c * 2.17E-03 - aPuma * Mcl1c * 1.63E-04 + aPuma_Mcl1c * 5.21E-03 - aNoxa * Mcl1c * 1.68E-05 + aNoxa_Mcl1c * 1.39E-03 - Mcl1c * 0.0115525 + Mcl1 * 0.00115525 + 8.37E+03 * 1.00E+00 * Inhib_eff_Mcl1 - Mcl1c * 4.68E-01
	#aBim_Mcl1c
	dy[20]= + aBim * Mcl1c * 7.80E-07 - aBim_Mcl1c * 2.17E-03 - aBim_Mcl1c * 9.93E-01
	#aPuma_BclxLc
	dy[21]= + aPuma * BclxLc * 8.63E-05 - aPuma_BclxLc * 4.40E-04 - aPuma_BclxLc * 6.75E-02
	#aPuma_Bcl2c
	dy[22]= + aPuma * Bcl2c * 4.91E-05 - aPuma_Bcl2c * 1.57E-04 - aPuma_Bcl2c * 6.75E-02
	#aPuma_Mcl1c
	dy[23]= + aPuma * Mcl1c * 1.63E-04 - aPuma_Mcl1c * 5.21E-03 - aPuma_Mcl1c * 6.93E-02
	#aNoxa_Mcl1c
	dy[24]= + aNoxa * Mcl1c * 1.68E-05 - aNoxa_Mcl1c * 1.39E-03 - aNoxa_Mcl1c * 4.98E+00
	#Bax
	dy[25]= -Bax * 0.0116 + MBax * 0.116 + 2201.64059 * 1.00E+00 - Bax * 0.11552453
	#MBax
	dy[26]= + Bax * 0.0116 - MBax * 0.116 - MBax * mBim * 2.07E-03 + MBax_mBim * 6.00E-02 - MBax * tBidm * 0.000006 + MBax_tBidm * 0.06 - MBax * mPuma * 6.00E-06 + MBax_mPuma * 6.00E-02 - MBax * 1.16E-01
	#tBidm
	dy[27]= + tBid * 1.16E-02 - tBidm * 1.16E-03 - MBax * tBidm * 0.000006 + MBax_tBidm * 0.06 + MBax_tBidm * 60 - tBidm * BclxL * 6.00E-09 + tBidm_BclxL * 6.00E-02 - MBak * tBidm * 6.00E-06 + MBak_tBidm * 6.00E-02 + MBak_tBidm * 6.00E+01 - tBidm * 0.011552453
	#mBim
	dy[28]= + aBim * 1.16E-02 - mBim * 1.16E-03 - MBax * mBim * 2.07E-03 + MBax_mBim * 6.00E-02 + MBax_mBim * 6.00E+01 - mBim * BclxL * 5.50E-07 + mBim_BclxL * 4.40E-04 - mBim * Bcl2 * 4.48E-07 + mBim_Bcl2 * 1.12E-04 - mBim * Mcl1 * 7.80E-07 + mBim_Mcl1 * 2.17E-03 - MBak * mBim * 2.07E-03 + MBak_mBim * 6.00E-02 + MBak_mBim * 6.00E+01 - mBim * 6.91E-01
	#mPuma
	dy[29]= + aPuma * 1.16E-02 - mPuma * 1.16E-03 - MBax * mPuma * 6.00E-06 + MBax_mPuma * 6.00E-02 + MBax_mPuma * 6.00E+01 - mPuma * BclxL * 8.63E-07 + mPuma_BclxL * 4.40E-04 - mPuma * Bcl2 * 4.91E-07 + mPuma_Bcl2 * 1.57E-04 - mPuma * Mcl1 * 1.63E-06 + mPuma_Mcl1 * 5.21E-03 - MBak * mPuma * 6.00E-06 + MBak_mPuma * 6.00E-02 + MBak_mPuma * 6.00E+01 - mPuma * 6.80E-01
	#BclxL
	dy[30]= + BclxLc * 1.16E-02 - BclxL * 0.00115525 - tBidm * BclxL * 6.00E-09 + tBidm_BclxL * 6.00E-02 - mBim * BclxL * 5.50E-07 + mBim_BclxL * 4.40E-04 - mPuma * BclxL * 8.63E-07 + mPuma_BclxL * 4.40E-04 - aBax * BclxL * 5.18E-07 + aBax_BclxL * 4.40E-04 - aBak * BclxL * 5.50E-06 + aBak_BclxL * 4.40E-04 + 1.00E+00 * 1.00E+00 * Bcl2t - BclxL * 1.16E-02
	#Bcl2
	dy[31]= + Bcl2c * 0.0115525 - Bcl2 * 0.00115525 - mBim * Bcl2 * 4.48E-07 + mBim_Bcl2 * 1.12E-04 - mPuma * Bcl2 * 4.91E-07 + mPuma_Bcl2 * 1.57E-04 - aBax * Bcl2 * 3.24E-05 + aBax_Bcl2 * 3.36E-04 + 1.00E+00 * 1.00E+00 * Bcl2t - Bcl2 * 1.16E-03
	#Mcl1
	dy[32]= + Mcl1c * 0.0115525 - Mcl1 * 0.00115525 - mBim * Mcl1 * 7.80E-07 + mBim_Mcl1 * 2.17E-03 - mPuma * Mcl1 * 1.63E-06 + mPuma_Mcl1 * 5.21E-03 - aBax * Mcl1 * 3.25E-07 + aBax_Mcl1 * 2.60E-04 - aBak * Mcl1 * 3.25E-07 + aBak_Mcl1 * 2.60E-04 + 1.00E+00 * 1.00E+00 * Bcl2t - Mcl1 * 1.16E-02
	#MBax_mBim
	dy[33]= + MBax * mBim * 2.07E-03 - MBax_mBim * 6.00E-02 - MBax_mBim * 6.00E+01 - MBax_mBim * 6.93E-02
	#aBax
	dy[34]= + MBax_mBim * 6.00E+01 + MBax_tBidm * 60 + MBax_mPuma * 6.00E+01 - aBax * BclxL * 5.18E-07 + aBax_BclxL * 4.40E-04 - aBax * Bcl2 * 3.24E-05 + aBax_Bcl2 * 3.36E-04 - aBax * Mcl1 * 3.25E-07 + aBax_Mcl1 * 2.60E-04 - aBax * aBax * 0.000857142 - aBax * aBax * 0.000857142 + Bax2 * 0.06 + Bax2 * 0.06
	#MBax_tBidm
	dy[35]= + MBax * tBidm * 0.000006 - MBax_tBidm * 0.06 - MBax_tBidm * 60 - MBax_tBidm * 6.75E-02
	#MBax_mPuma
	dy[36]= + MBax * mPuma * 6.00E-06 - MBax_mPuma * 6.00E-02 - MBax_mPuma * 6.00E+01 - MBax_mPuma * 6.93E-02
	#tBidm_BclxL
	dy[37]= + tBidm * BclxL * 6.00E-09 - tBidm_BclxL * 6.00E-02 - tBidm_BclxL * 1.16E-02
	#mBim_BclxL
	dy[38]= + mBim * BclxL * 5.50E-07 - mBim_BclxL * 4.40E-04 - mBim_BclxL * 9.75E-01
	#mBim_Bcl2
	dy[39]= + mBim * Bcl2 * 4.48E-07 - mBim_Bcl2 * 1.12E-04 - mBim_Bcl2 * 6.93E-02
	#mBim_Mcl1
	dy[40]= + mBim * Mcl1 * 7.80E-07 - mBim_Mcl1 * 2.17E-03 - mBim_Mcl1 * 9.93E-01
	#mPuma_BclxL
	dy[41]= + mPuma * BclxL * 8.63E-07 - mPuma_BclxL * 4.40E-04 - mPuma_BclxL * 6.75E-02
	#mPuma_Bcl2
	dy[42]= + mPuma * Bcl2 * 4.91E-07 - mPuma_Bcl2 * 1.57E-04 - mPuma_Bcl2 * 6.75E-02
	#mPuma_Mcl1
	dy[43]= + mPuma * Mcl1 * 1.63E-06 - mPuma_Mcl1 * 5.21E-03 - mPuma_Mcl1 * 6.93E-02
	#aBax_BclxL
	dy[44]= + aBax * BclxL * 5.18E-07 - aBax_BclxL * 4.40E-04 - aBax_BclxL * 1.16E-02
	#aBax_Bcl2
	dy[45]= + aBax * Bcl2 * 3.24E-05 - aBax_Bcl2 * 3.36E-04 - aBax_Bcl2 * 0.1693
	#aBax_Mcl1
	dy[46]= + aBax * Mcl1 * 3.25E-07 - aBax_Mcl1 * 2.60E-04 - aBax_Mcl1 * 0.0693
	#MBak
	dy[47]= -MBak * tBidm * 6.00E-06 + MBak_tBidm * 6.00E-02 - MBak * mBim * 2.07E-03 + MBak_mBim * 6.00E-02 - MBak * mPuma * 6.00E-06 + MBak_mPuma * 6.00E-02 + 9.50E+02 * 1.00E+00 - MBak * 6.82E-02
	#MBak_tBidm
	dy[48]= + MBak * tBidm * 6.00E-06 - MBak_tBidm * 6.00E-02 - MBak_tBidm * 6.00E+01 - MBak_tBidm * 6.75E-02
	#aBak
	dy[49]= + MBak_tBidm * 6.00E+01 + MBak_mBim * 6.00E+01 + MBak_mPuma * 6.00E+01 - aBak * BclxL * 5.50E-06 + aBak_BclxL * 4.40E-04 - aBak * Mcl1 * 3.25E-07 + aBak_Mcl1 * 2.60E-04 - aBak * aBak * 0.000857142 - aBak * aBak * 0.000857142 + Bak2 * 0.06 + Bak2 * 0.06
	#MBak_mBim
	dy[50]= + MBak * mBim * 2.07E-03 - MBak_mBim * 6.00E-02 - MBak_mBim * 6.00E+01 - MBak_mBim * 6.93E-02
	#MBak_mPuma
	dy[51]= + MBak * mPuma * 6.00E-06 - MBak_mPuma * 6.00E-02 - MBak_mPuma * 6.00E+01 - MBak_mPuma * 6.93E-02
	#aBak_BclxL
	dy[52]= + aBak * BclxL * 5.50E-06 - aBak_BclxL * 4.40E-04 - aBak_BclxL * 0.0693
	#aBak_Mcl1
	dy[53]= + aBak * Mcl1 * 3.25E-07 - aBak_Mcl1 * 2.60E-04 - aBak_Mcl1 * 0.0675
	#Bax2
	dy[54]= + aBax * aBax * 0.000857142 - Bax2 * 0.06 - Bax2 * Bax2 * 0.000857142 - Bax2 * Bax2 * 0.000857142 + Bax4 * 0.06 + Bax4 * 0.06 - Bax2 * Mito * 8.57E-04 + Bax2_Mito * 6.00E-02
	#Bax4
	dy[55]= + Bax2 * Bax2 * 0.000857142 - Bax4 * 0.06 - Bax4 * Mito * 8.57E-04 + Bax4_Mito * 0.06
	#Bak2
	dy[56]= + aBak * aBak * 0.000857142 - Bak2 * 0.06 - Bak2 * Bak2 * 0.000857142 - Bak2 * Bak2 * 0.000857142 + Bak4 * 0.06 + Bak4 * 0.06 - Bak2 * Mito * 8.57E-04 + Bak2_Mito * 0.06
	#Bak4
	dy[57]= + Bak2 * Bak2 * 0.000857142 - Bak4 * 0.06 - Bak4 * Mito * 8.57E-04 + Bak4_Mito * 0.06
	#Mito
	dy[58]= -Bax2 * Mito * 8.57E-04 + Bax2_Mito * 6.00E-02 - Bax4 * Mito * 8.57E-04 + Bax4_Mito * 0.06 - Bak2 * Mito * 8.57E-04 + Bak2_Mito * 0.06 - Bak4 * Mito * 8.57E-04 + Bak4_Mito * 0.06 + AMito * 5.16E-01
	#Bax2_Mito
	dy[59]= + Bax2 * Mito * 8.57E-04 - Bax2_Mito * 6.00E-02 - Bax2_Mito * 6.00E+01
	#AMito
	dy[60]= + Bax2_Mito * 6.00E+01 + Bax4_Mito * 60 + Bak2_Mito * 60 + Bak4_Mito * 60 - AMito * 5.16E-01
	#Bax4_Mito
	dy[61]= + Bax4 * Mito * 8.57E-04 - Bax4_Mito * 0.06 - Bax4_Mito * 60
	#Bak2_Mito
	dy[62]= + Bak2 * Mito * 8.57E-04 - Bak2_Mito * 0.06 - Bak2_Mito * 60
	#Bak4_Mito
	dy[63]= + Bak4 * Mito * 8.57E-04 - Bak4_Mito * 0.06 - Bak4_Mito * 60
	#Inhib_eff_BclxL
	dy[64]=0
	#Bcl2t
	dy[65]=0
	#Inhib_eff_Bcl2
	dy[66]=0
	#Inhib_eff_Mcl1
	dy[67]=0
end
