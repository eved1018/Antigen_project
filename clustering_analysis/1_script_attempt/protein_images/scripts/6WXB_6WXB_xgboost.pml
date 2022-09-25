delete all 
                fetch 6WXB.A

                color blue 
                set cartoon_transparency,0.75


                select ann1, resi 98+131+133+134+135+136+137+145+153+155+156+186+189+190+192+193+194+226+228
                indicate bycalpha ann1
                create annotated1, indicate
                select ann2, resi 48+49+50+59+60+62+63+74+75+78+79+90+92+94+143+271+272+273+274
                indicate bycalpha ann2
                create annotated2, indicate
                select ann3, resi 18+38+318+344+345+347+348+349+350+363+364+367+370+371+374+375+377
                indicate bycalpha ann3
                create annotated3, indicate
                select ann4, resi 50+59+60+62+63+74+75+78+79+82+90+92+94+271+273
                indicate bycalpha ann4
                create annotated4, indicate
                select ann5, resi 
                indicate bycalpha ann5
                create annotated5, indicate
                select ann6, resi 48+49+50+59+60+62+63+74+75+78+79+90+92+94+143+271+272+273+274
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


                select pred, resi 29+431+401+412+214+277+413+278+276+421+82+420+384+47+294+408+423+10+201+499+222+371+435+107+417+275+216+30+212+404+224+119+395+368+419+221
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
                png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/protein_images/Images/6WXB/6WXB_xgboost.png,width=900, height=900,dpi = 350,ray=1
                quit