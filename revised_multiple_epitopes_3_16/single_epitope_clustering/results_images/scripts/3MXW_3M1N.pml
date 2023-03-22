delete all 
                        fetch 3M1N.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 44+45+87+123+125+126+131+132+133+134+135+136+147+153+155+174+176+177+178+179+180
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 177+176+75+156+80+155+45+178+179+44+152+135+134+133+132+126+131
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 38+49+166+167+41+47+34+37+25
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/3MXW_3M1N_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit