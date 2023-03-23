delete all 
                        fetch 2VJ2.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 190+201+202+203+204+205+206+207+209+211+219+221+222+224+246+247+250+252
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 201+215+228+200+202+203+207+206+204+199+205+221+222+192+227+233+231+224+246+247
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 304+267+266+268+292+279+253
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/2VJ2_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit