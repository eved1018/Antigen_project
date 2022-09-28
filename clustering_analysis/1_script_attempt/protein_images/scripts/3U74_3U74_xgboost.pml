delete all 
                fetch 3U74.U

                color blue 
                set cartoon_transparency,0.75


                select ann1, resi 185+186+187+188+189+190+191+192+217+218+220+267+269
                indicate bycalpha ann1
                create annotated1, indicate
                select ann2, resi 58+91+92+94+112+113+114+116+118+174
                indicate bycalpha ann2
                create annotated2, indicate
                select ann3, resi 58+91+92+94+112+113+114+116+118+174
                indicate bycalpha ann3
                create annotated3, indicate
                select ann4, resi 58+91+92+94+112+113+114+116+118+174
                indicate bycalpha ann4
                create annotated4, indicate
                select ann5, resi 
                indicate bycalpha ann5
                create annotated5, indicate
                select ann6, resi 
                indicate bycalpha ann6
                create annotated6, indicate
                select ann7, resi 58+91+92+94+112+113+114+116+118+174+10000000000
                indicate bycalpha ann7
                create annotated7, indicate
                select ann8, resi 
                indicate bycalpha ann8
                create annotated8, indicate
                select ann9, resi 
                indicate bycalpha ann9
                create annotated9, indicate


                select pred, resi 38+71+281+91+198+140+203+129+278+282+211+264+212+9+73+40+232+208+209+32+8+22+92+276+42+279+277+103+142+273+37
                indicate bycalpha pred
                create pred_res, indicate



                show sphere, annotated1
                color pink, annotated1
                set sphere_transparency, 0.3,annotated1
                show sphere, annotated2
                color blue, annotated2
                set sphere_transparency, 0.3,annotated2
                show sphere, annotated3
                color aquamarine, annotated3
                set sphere_transparency, 0.3,annotated3
                show sphere, annotated4
                color br3, annotated4
                set sphere_transparency, 0.3,annotated4
                show sphere, annotated5
                color br6, annotated5
                set sphere_transparency, 0.3,annotated5
                show sphere, annotated6
                color br9, annotated6
                set sphere_transparency, 0.3,annotated6
                show sphere, annotated7
                color brightorange, annotated7
                set sphere_transparency, 0.3,annotated7
                show sphere, annotated8
                color deepsalmon, annotated8
                set sphere_transparency, 0.3,annotated8
                show sphere, annotated9
                color violet, annotated9
                set sphere_transparency, 0.3,annotated9








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
                png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/protein_images/Images/3U74/3U74_xgboost.png,width=900, height=900,dpi = 350,ray=1
                quit