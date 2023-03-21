delete all 
                        fetch 3WE1.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 592+593+594+595+596+598+600+602+631+632+647+649
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 590+593+596+594+595+647 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 672+673+671+670+649+628+629+626+622+621+652+669+654+656
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 611+579+636
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/4BZ1_3WE1_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit