delete all 
                fetch 6CHX.A

                color blue 
                set cartoon_transparency,0.75


                select ann1, resi 95+134+135+136+137+138+145+153+155+156+158+159+160+187+188+189+190+192+193+194+196+222+225+227
                indicate bycalpha ann1
                create annotated1, indicate
                select ann2, resi 135+136+137+153+159+190+192+193+194+196+198+226
                indicate bycalpha ann2
                create annotated2, indicate
                select ann3, resi 134+135+136+137+153+155+158+159+160+187+189+190+192+193+194+196+219+225+226
                indicate bycalpha ann3
                create annotated3, indicate
                select ann4, resi 
                indicate bycalpha ann4
                create annotated4, indicate
                select ann5, resi 
                indicate bycalpha ann5
                create annotated5, indicate
                select ann6, resi 135+136+137+153+159+190+192+193+194+196+198+226
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


                select pred, resi 76+82+53+214+84+199+104+209+246+173+201+111+107+81+208+175+263+52+262+212+83+205+113+265+163+125+238+108
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
                png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/protein_images/Images/6CHX/6CHX_xgboost.png,width=900, height=900,dpi = 350,ray=1
                quit