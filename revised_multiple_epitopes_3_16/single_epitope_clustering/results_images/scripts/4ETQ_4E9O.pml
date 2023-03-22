delete all 
                        fetch 4E9O.X
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 5+39+40+41+44+174+175+176+177+178+179+204+205+215+217+219+220+221+223+224+226+227
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 29+129+163+162+160+234+157+155+232+153+20+122+22+133+126
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 177+9+211+220+5+221+223+222+226+2+227+219+224
                        indicate bycalpha pred_2
                        create pred_res_2, indicate
                        



                        show sphere, annotated
                        color pink, annotated
                        set sphere_transparency, 0.5,annotated
                        show sphere, pred_res
                        set sphere_scale,0.5,pred_res
                        color green, pred_res
                        set sphere_transparency,0,pred_res
                        set cartoon_transparency,1,pred_res


                        show sphere, pred_res_2
                        set sphere_scale,0.5,pred_res_2
                        color red, pred_res_2
                        set sphere_transparency,0,pred_res_2
                        set cartoon_transparency,1,pred_res_2

                    

                        remove resn hoh
                        hide (het)
                        zoom complete=1
                        bg_color white 
                        set ray_opaque_background, 1
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/4ETQ_4E9O_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit