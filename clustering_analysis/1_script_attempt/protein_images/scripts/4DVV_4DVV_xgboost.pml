delete all 
                fetch 4DVV.A

                color blue 
                set cartoon_transparency,0.75


                select ann1, resi 51+52+53+58+60+69+71+72+73+74+75+76+77+78+79+103+106+107+114
                indicate bycalpha ann1
                create annotated1, indicate
                select ann2, resi 122+124+278+279+280+281+282+365+366+367+368+370+371+425+427+429+431+432+455+456+457+458+459+460+462+469+473+474+476+480
                indicate bycalpha ann2
                create annotated2, indicate
                select ann3, resi 51+52+53+54+71+72+73+74+75+76+77+78+103+106+107+217+221
                indicate bycalpha ann3
                create annotated3, indicate
                select ann4, resi 51+52+53+58+60+69+71+72+73+74+75+76+77+78+79+103+106+107+114
                indicate bycalpha ann4
                create annotated4, indicate
                select ann5, resi 
                indicate bycalpha ann5
                create annotated5, indicate
                select ann6, resi 
                indicate bycalpha ann6
                create annotated6, indicate
                select ann7, resi 
                indicate bycalpha ann7
                create annotated7, indicate
                select ann8, resi 
                indicate bycalpha ann8
                create annotated8, indicate
                select ann9, resi 
                indicate bycalpha ann9
                create annotated9, indicate


                select pred, resi 75+53+459+458+61+327+73+367+425+368+71+72+280+221+491+421+300+50+279+282+246+325+77+278+76+250+60+51+442+79+437+63
                indicate bycalpha pred
                create pred_res, indicate



                show sphere, annotated1
                color pink, annotated1
                set sphere_transparency, 0.5,annotated1
                show sphere, annotated2
                color blue, annotated2
                set sphere_transparency, 0.5,annotated2
                show sphere, annotated3
                color aquamarine, annotated3
                set sphere_transparency, 0.5,annotated3
                show sphere, annotated4
                color br3, annotated4
                set sphere_transparency, 0.5,annotated4
                show sphere, annotated5
                color br6, annotated5
                set sphere_transparency, 0.5,annotated5
                show sphere, annotated6
                color br9, annotated6
                set sphere_transparency, 0.5,annotated6
                show sphere, annotated7
                color brightorange, annotated7
                set sphere_transparency, 0.5,annotated7
                show sphere, annotated8
                color deepsalmon, annotated8
                set sphere_transparency, 0.5,annotated8
                show sphere, annotated9
                color violet, annotated9
                set sphere_transparency, 0.5,annotated9








                show sphere, pred_res
                set sphere_scale,0.5,pred_res
                color green, pred_res
                set sphere_transparency,0,pred_res
                set cartoon_transparency,1,pred_res





                remove resn hoh
                hide (het)
                zoom complete=1
                bg_color white 
                set ray_opaque_background, 1
                png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/protein_images/Images/4DVV/4DVV_xgboost.png,width=900, height=900,dpi = 350,ray=1
                quit