*******CNFET MULTIFUNCTIONAL FILTER Simulation
**********************************************

.options POST
.options AUTOSTOP
.options INGOLD=2     DCON=1
.options GSHUNT=1e-12 RMIN=1e-15
.options ABSTOL=1e-5  ABSVDC=1e-4
.options RELTOL=1e-2  RELVDC=1e-2
.options NUMDGT=4     PIVOT=13

.param   TEMP=27

*including models

.lib 'CNFET.lib' CNFET

*.hdl ‘NCNFET_L3.va’ *top-level n-CNFET Standard Model
*.hdl ‘PCNFET_L3.va’ *top-level p-CNFET Standard Model

*Some CNFET parameters:

.param Ccsd=0             CoupleRatio=0
.param m_cnt=1            Efo=0.6    
.param Wg=0               Cb=40e-12
.param L_channel=32e-9    Lceff=100e-9
.param Vfn=0              Vfp=0
.param m=19               n=0       
.param Hox=4e-9           Kox=16
.param L_sdf=32e-9	

*circuit connection ncnfet

Xn1 8 6 5 5 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn2 9 7 5 5 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn3 9 13 14 14 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn4 8 0 14 14 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn7 11 10 9 9 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn8 10 10 8 8 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn13 5 4 3 3 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn14 3 1 2 2 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn15 14 4 15 15 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn16 15 1 2 2 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn17 13 4 16 16 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn18 16 1 2 2 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn19 7 4 17 17 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn20 17 1 2 2 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xn23 24 4 18 18 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=10e-9 n1=19 n2=0 tubes=15

Xn24 18 1 2 2 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=10e-9 n1=19 n2=0 tubes=15

Xn29 21 21 19 19 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=5e-9 n1=19 n2=0 tubes=22

Xn30 22 21 20 20 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=5e-9 n1=19 n2=0 tubes=22

Xn31 19 19 2 2 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=5e-9 n1=19 n2=0 tubes=22

Xn32 20 19 2 2 NCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=5e-9 n1=19 n2=0 tubes=22

*circuit connection pcnfet

Xp5 11 11 12 12 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xp6 10 11 12 12 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xp9 27 10 12 12 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xp10 28 10 12 12 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xp11 13 8 27 27 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xp12 7 8 28 28 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=20e-9 n1=19 n2=0 tubes=8

Xp21 29 10 12 12 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=10e-9 n1=19 n2=0 tubes=15

Xp22 21 8 29 29 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=10e-9 n1=19 n2=0 tubes=15

Xp25 25 25 12 12 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=5e-9 n1=19 n2=0 tubes=22

Xp26 23 25 12 12 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=5e-9 n1=19 n2=0 tubes=22

Xp27 24 24 25 25 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=5e-9 n1=19 n2=0 tubes=22

Xp28 22 24 23 23 PCNFET Lch='L_channel' Lgeff='Lceff' Lss='L_sdf' Ldd='L_sdf' Kgate='Kox' Tox='Hox' Csub='Cb' Vfbn=0.0 Dout=2.0 Sout=0.0 Pitch=5e-9 n1=19 n2=0 tubes=22

R1 30 13 10K 
R2 13 6 10K   
R3 22 0 10K  
C1 6 0 50fF  
C2 7 0 5fF

Vb1 4 0 DC -0.25V 
Vb2 1 0 DC -0.75V
Vdd 12 0 DC 1.65V
Vss 2 0 DC -1.65V
Vin 30 0 AC 5V

.AC DEC 10 1.00E+6 1.00E+11
.END