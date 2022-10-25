delete all 
                fetch 1IK0.A

                color blue 
                set cartoon_transparency,0.75


                select ann1, resi 14+18+21+101+104+105+107+108+109+110+112
                indicate bycalpha ann1
                create annotated1, indicate
                select ann2, resi 11+14+15+101+104+105+107+108+109+110
                indicate bycalpha ann2
                create annotated2, indicate
                select ann3, resi 32+52+53+54+55+56+57+58+59+61+62+64+65+66+68+69+74+76+77
                indicate bycalpha ann3
                create annotated3, indicate
                select ann4, resi 14+18+21+101+104+105+107+108+109+110+112
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


                select pred, resi 11+108+22+104+88+15+105+109+23+100+24+58+102+65+38+18+87+16+83+20+53+89+5+110
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
                png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/protein_images/Images/1IK0/1IK0_xgboost.png,width=900, height=900,dpi = 350,ray=1
                quit