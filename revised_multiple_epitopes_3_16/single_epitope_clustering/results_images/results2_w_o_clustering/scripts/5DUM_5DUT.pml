delete all 
                        fetch 5DUT.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 115+116+118+121+123+124+159+161+162+163+164+165+167+168+240+241+242
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 139+138+67+66+68+54+141+140+137 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color green, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 139+138+67+66+68+54+141+140+137
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 139+138+67+66+68+54+141+140+137
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
                        color green, pred_res_2
                        set sphere_transparency,0,pred_res_2
                        set cartoon_transparency,1,pred_res_2

                    

                        remove resn hoh
                        hide (het)
                        zoom complete=1
                        bg_color white 
                        set ray_opaque_background, 1
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/results2_w_o_clustering/images/5DUM_5DUT_dockpred.png,width=900, height=900,dpi = 350,ray=1
                        quit