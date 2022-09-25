delete all 
                fetch 5DUT.A

                color blue 
                set cartoon_transparency,0.75


                select ann1, resi 115+116+118+121+123+124+159+161+162+163+164+165+167+168+240+241+242
                indicate bycalpha ann1
                create annotated1, indicate
                select ann2, resi 68+110+112+113+115+119+137+138+145+167+168+169+252+255+257+258
                indicate bycalpha ann2
                create annotated2, indicate
                select ann3, resi 
                indicate bycalpha ann3
                create annotated3, indicate
                select ann4, resi 
                indicate bycalpha ann4
                create annotated4, indicate
                select ann5, resi 68+110+112+113+115+119+137+138+145+167+168+169+252+255+257+258
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


                select pred, resi 68+138+259+137+139+140+49+261+48+141+51+220+74+60+221+133+262+263+47+120+206+145+107+63+214+50+113+75
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
                png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/protein_images/Images/5DUT/5DUT_xgboost.png,width=900, height=900,dpi = 350,ray=1
                quit