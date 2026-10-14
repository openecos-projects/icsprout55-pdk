*** from the hspice original models adapted to work with ngspice ***
*** No copyright is hold here. The idea is to make everything available ***
*** If anything is licenseable, will just use the same Apache 2.0. See LICENSE ***
*** Ckristian Duran (2026) ***

***  55nm Logic Salicide 1.2/2.5 SPICE Model ***
*** for ngspice ***

1. update history:
     Rev                   Date                         Who                   Description       
     v1.0                  2024-09-30                ICs                     1. all models (mos, bjt, resistor, mom, dio, var and interconnect etc) parameters are re-extracted due to process change.     
     v1.01                2024-11-08                ICs                     1. update corner parameters of mos (pm1p2_lvt_lp, nm1p2_svt_lp, nm1p2_lvt_lp, nnat1p2_lp)
                                                                                        2. update BSIM4 parameter of mos(nm1p2_hvt_lp, pm1p2_hvt_lp)

     v1.02                2024-11-18                ICs                     1. update corner parameters of mos (pm1p2_svt_lp, nm2p5_lp, nm2p5od33_lp)

     v1.1                  2026-03-24                ICs                     1. update BSIM4 parameter of mos(nm1p2_hvt_lp, pm1p2_hvt_lp)
					        2. update all parameters of mos (nnat1p2_lp)
					        3. add device info for random parameter of passive mc
					        4. update all core dio
					        5. update res
     v1.1-ngspice          2026-10-07               CKDur                   1. Adapt many syntaxes that hspice handles but ngspice don't.
                                                                            2. Re-write the limits of detection of the transistor models due to rounding errors.
                                                                                        

2.device list
		device type		model name
		MOS			nm1p2_svt_lp
					pm1p2_svt_lp
					nm1p2_hvt_lp
					pm1p2_hvt_lp
					nm1p2_lvt_lp
					pm1p2_lvt_lp
					nnat1p2_lp
					nm2p5_lp
					pm2p5_lp
					nnat2p5_lp
					nmod3p3_lp
					pmod3p3_lp
					nnatod3p3_lp
					
		BJT			vpnp1p2_2x_lp
					vpnp1p2_5x_lp
					vpnp1p2_10x_lp
					vnpn1p2_2x_lp
					vnpn1p2_5x_lp
					vnpn1p2_10x_lp
					vpnp2p5_2x_lp
					vpnp2p5_5x_lp
					vpnp2p5_10x_lp
					vnpn2p5_2x_lp
					vnpn2p5_5x_lp
					vnpn2p5_10x_lp
					
		DIO			dio_1p2_np_pw_lp
					dio_1p2_np_pw_hvt_lp
					dio_1p2_np_pw_lvt_lp
					dio_1p2_pp_nw_lp
					dio_1p2_pp_nw_hvt_lp
					dio_1p2_pp_nw_lvt_lp
					dio_2p5_np_pw_lp
					dio_2p5_pp_nw_lp
					dio_1p2_np_psub_nt_lp
					dio_2p5_np_psub_nt_lp
					dio_1p2_nw_psub_lp
					dio_1p2_np_pw_dnw_lp
					dio_1p2_pw_dnw_lp
					dio_1p2_dnw_psub_lp
					parasitic_nwd
					parasitic_rwd
					parasitic_dnwd
					
		MOM			mom_2t
					mom_3t
					
		RES			re_npo_sab_2t
					re_npo_sab_3t
					re_ppo_sab_2t
					re_ppo_sab_3t
					re_npo_2t
					re_npo_3t
					re_ppo_2t
					re_ppo_3t
					re_ndif_sab_2t
					re_ndif_sab_3t
					re_pdif_sab_2t
					re_pdif_sab_3t
					re_ndif_2t
					re_ndif_3t
					re_pdif_2t
					re_pdif_3t
					re_nwsti_2t
					re_nwsti_3t
					re_nwaa_2t
					re_nwaa_3t
					re_m1_2t
					re_m1_3t
					re_m2_2t
					re_m2_3t
					re_m3_2t
					re_m3_3t
					re_m4_2t
					re_m4_3t
					re_m5_2t
					re_m5_3t
					re_m6_2t
					re_m6_3t
					re_m7_2t
					re_m7_3t
					re_m8_2t
					re_m8_3t
					re_tm2_2t
					re_tm2_3t
					re_alpa_2t
					re_alpa_3t
			
		VAR			var1p2_npd_nw_lp
					var2p5_npd_nw_lp 

3. files:

        readme.txt                                                                     .... this file!
        ICsprout_55LLULP1225_V1p02_hsp.lib                             .... top lib file
        model_wrapper1_hsp.lib                                                 .... corner values for mosfets
        model_wrapper1_hsp.lib                                                 .... corner values for diode, bjt, resistor, varactor and mom
            bjt
                 npn12_lp.mdl	              		              .... model parameters file for 1.2v npn bjt (emitter area=2x2um^2, 5x5um^2, 10x10um^2)
                 npn25_lp.mdl	              		              .... model parameters file for 2.5v npn bjt (emitter area=2x2um^2, 5x5um^2, 10x10um^2)
                 pnp12_lp.mdl	              		              .... model parameters file for 1.2v pnp bjt (emitter area=2x2um^2, 5x5um^2, 10x10um^2)
                 pnp25_lp.mdl	              		              .... model parameters file for 2.5v pnp bjt (emitter area=2x2um^2, 5x5um^2, 10x10um^2)
            dio
                 dio_core.mdl                                                          .... model parameters file for 1.2v diode (np_pw dio, pp_nw dio, np_psub_nt) 
                 dio_io25.mdl                                                          .... model parameters file for 2.5v diode (np_pw dio, pp_nw dio, np_psub_nt)
                 dio_well.mdl                                                          .... model parameters file for 1.2v diode (nw_psub, np_pw_dnw, pw_dnw, dnw_psub)
            mom
                 mom.ckt                                                               .... mom capacitor macro mode
            mos
                 nsvt.mdl                                                                .... model parameters file for 1.2v mos
                 nlvt.mdl                                                                .... model parameters file for 1.2v mos
                 nhvt.mdl                                                               .... model parameters file for 1.2v mos
                 nnat1p2.mdl                                                         .... model parameters file for 1.2v mos
                 psvt.mdl                                                               .... model parameters file for 1.2v mos
                 plvt.mdl                                                                .... model parameters file for 1.2v mos
                 phvt.mdl                                                               .... model parameters file for 1.2v mos 
                 nio25.mdl                                                             .... model parameters file for 2.5v mos
                 nio25od33.mdl                                                      .... model parameters file for 3.3v mos
                 nt25.mdl                                                               .... model parameters file for 2.5v mos 
                 nt25od33.mdl                                                       .... model parameters file for 3.3v mos
                 pio25.mdl                                                             .... model parameters file for 2.5v mos
                 pio25od33.mdl                                                     .... model parameters file for 3.3v mos 
            res
                 resistor.ckt                                                           .... resistors macro model 
            var
                 varactor.ckt                                                           .... n+poly/nw mos varactor macro model	
  

4. how to use spice models in hspice:
   Notice:
   (1)If you use PDK to create netlist file please specify the SCALE to 0.9 in the Simulation/Options/Analog/SCALE.
   (2)The "prelayout" is globally changed parameter for MOS device, which has been defined as the switch for contact to poly edge parasitic capacitance.
   The contact to poly edge parasitic capacitance will be included when the flag of prelayout is set to 1 for pre-layout simulation.
   User can include a "pre_layout" library section to set this flag for pre-layout simulation, which is only used in macro model.
   Please notice that the library "pre_layout" need to be placed behind tt/ff/ss/fnsp/snfp/mos_mc sections to prevent from the redefine(this flag changes back to 0)
   for example, add such statement: .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' pre_layout
   Need to turn off this flag when do post-layout simulation


      a. specify mos, diode ,bjt,resistor, varactor and mom capacitor model corner by the '.lib' statement;

         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_mos
                                              ^^ mos model corner
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_passive
                                              ^^ diode model corner
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_passive
                                              ^^ bjt model corner 
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_passive
                                              ^^ resistor model corner  
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_passive
                                              ^^ varactor model corner  
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_passive
                                              ^^ mom model corner  

      b. specify mos, diode ,bjt,resistor, varactor and mom capacitor monte carlo model by the '.lib' statement;

         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' mc_mos
                                              ^^ mos monte carlo model 
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' mc_passive
                                              ^^ bjt model corner 
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' mc_passive
                                              ^^ resistor monte carlo model 
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' mc_passive
                                              ^^ mos varactor monte carlo model
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' mc_passive
                                              ^^ mom monte carlo model 

      c. include mos model parameters by the '.inc' statement;
         
         .inc '/xxx/xxx/nhvt.mdl'


      d. include diode model parameters by the '.inc' statement;
         .inc '/xxx/xxx/dio_core.mdl'

      e. include bjt model parameters by the '.inc' statement;
 
        .inc '/xxx/xxx/npn12_lp.mdl'


      f. call resistor macro model subcircuit by the following statement;
         
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_passive
                                              ^^ resistor model corner
          
         then add the following statement in your netlist to define  
	 subcircuit condition you want to simulate. 

         e.g. nwell resistor under sti
        
         xr1 1 2 3 re_nwsti_2t w=2u l=10u
            
         where '/xxx/xxx/' is the directory where mdl and lib files are located.  

      g. call mos varactor model by the following statement;
         
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_passive
                                              ^^ varactor model corner
         .inc '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_passive
                                              ^^ diode model corner      
         then add the following statement in your netlist to define subcircuit condition
         you want to simulate.
         
         e.g. xckt 1 2 var1p2_npd_nw_lp lr=10u wr=10u nf=1 mismod_var=1 mr=1

      h. call mom capacitor model by the following statement;
         
         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_passive
                                              ^^ mom model corner
         then add the following statement in your netlist to define subcircuit condition
         you want to simulate.
         e.g. xc1 1 2 mom_2t lf=5u nf=26 bm=2 tm=3 mr=1 mismod_mom=0
	 '/xxx/xxx/' is the directory where mdl and lib files are located. 

      i. For the pre-layout simulation of mos model corner by the '.lib' statement;

         Please notice that the library "pre_layout" need to be placed behind tt/ff/ss/fnsp/snfp/mos_mc sections to prevent from the redefine(this flag changes back to 0)
         Only macro model can be used in such pre-simulation.

         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_mos
                                          ^^ mos model corner

         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' pre_layout
                                                  ^^ pre-layout simulation 

         e.g. xm1 d g s b nm1p2_hvt_lp w=1e-6 l=1e-7 nf=1 mr=1

      j. For the post-layout simulation of mos model corner by the '.lib' statement;

         Don't include the library "pre_layout"   
         Both of marcro model and bsim model can be used in post-simulation.

         .lib '/xxx/xxx/ICsprout_55LLULP1225_V1p0_hsp.lib' tt_mos
                                          ^^ mos model corner

         e.g. xmn1 d g s b nm2p5_lp w=1e-6 l=1e-7 
         
         e.g. mn1 d g s b nm2p5_lp_core w=1e-6 l=1e-7 

 
5. corner model 

      five model corners are provided for mosfets, 
      three model corners are provided for diode,
      three model corners are provided for bjt.
      three model corners are provided for res.
      three model corners are provided for varactor.
      three model corners are provided for mom.

      they are
        
      ----------------------------------------------------
      mos        name : corner
      ----------------------------------------------------
                 tt_mos : typical case
                 ss_mos : slow case
                 ff_mos : fast case
                 snfp_mos : slow n fast p case    
                 fnsp_mos : fast n slow p case    
      ----------------------------------------------------
      diode      name : corner
      ----------------------------------------------------
                 tt_passive : typical case
                 ss_passive : slow case
                 ff_passive : fast case 
      ----------------------------------------------------
      bjt        name : corner
      ----------------------------------------------------
                 tt_passive : typical case
                 ss_passive : slow case
                 ff_passive : fast case  
      ----------------------------------------------------
      res        name : corner
      ----------------------------------------------------
                 tt_passive : typical case
                 ss_passive : slow case
                 ff_passive : fast case 
      ----------------------------------------------------
      varactor   name : corner
      ----------------------------------------------------
                 tt_passive : typical case
                 ss_passive : slow case
                 ff_passive : fast case 
      ----------------------------------------------------
      mom        name : corner
      ----------------------------------------------------
                 tt_passive : typical case
                 ss_passive : slow case
                 ff_passive : fast case 
      ----------------------------------------------------

6. monte carlo statistical model
   demo netlist
------------------------------------------------------------
.options itl5=0 measdgt=5 post=2 nomod ingold=2
.lib 'ICsprout_55LLULP1225_V1p0_hsp.lib' mc_mos
.temp 25
* assume source at 0
vg1 g1 0 1.2
vd1 d1 0 1.2
vd2 d2 0 1.2
vb b 0 0
m1 d1 g1 0 b nm1p2_hvt_lp_core w=10u l=0.06u 
.dc  sweep  monte=500
.print dc  id1=i(vd1)
.end
---------------------------------------------------------------

7. demo netlist for mos
**********************************************************
.options post=2 nomod ingold=2 
.lib 'ICsprout_55LLULP1225_V1p0_hsp.lib' tt_mos
*.lib 'ICsprout_55LLULP1225_V1p0_hsp.lib' pre_layout
.temp 25  
 xm1 d1 g1 0 0 nm1p2_hvt_lp w=10u l=0.06u mr=1 nf=1 mismod=1 
 xm2 d2 g1 0 0 nm1p2_hvt_lp w=10u l=0.06u mr=1 nf=1 mismod=1
 vd1 d1 0 1.2
 vg1 g1 0 1.2
 vd2 d2 0 1.2
 .dc monte=100
 .print i(vd1) i(vd2)
 .end

8. demo netlist for resistor
**********************************************************
$ this is a test
.options  post=2 nomod ingold=2 
.lib 'ICsprout_55LLULP1225_V1p0_hsp.lib' tt_passive
.temp 25
.param wr=1u lr=8u
xnposab1 n1 n2 re_ndif_2t w=wr l=lr resmis_mod=1
xnposab2 n3 n4 re_ndif_2t w=wr l=lr resmis_mod=1
vn1 n1 0 1  
vn2 n2 0 0
vn3 n3 0 1  
vn4 n4 0 0
.dc monte=100
.print dc res1=par('v(n1)/i(vn2)') res2=par('v(n3)/i(vn4)')
.end


9. demo netlist for mom capacitor
(Remark: If designer use mom mismatch function, it must be set mr=2 because 
mom mismatch model is extracted based on cross couple structure which mr is 
equal to 2)
****************************************************************************
$ this is a test
.lib 'ICsprout_55LLULP1225_V1p0_hsp.lib' tt_passive
.option captab 
.temp 25
x161 161 0 mom_2t lf=4u nf=20 bm=2 tm=5 mr=2 mismod_mom=1
x162 162 0 mom_2t lf=4u nf=20 bm=2 tm=5 mr=2 mismod_mom=1
v1 1 0 0
r161 1 161 1e-3
r162 1 162 1e-3
.dc monte=100
.print dc cap(161) cap(162)
.end
