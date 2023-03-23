delete all 
                        fetch 3UP1.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 52+54+55+59+61+62+84+85+86+88+93+94+95+98+100
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 100+138+189+59+195+194+196+83+79+192+190+84+191 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 15+14+13+73+66+68+69+93
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 115+117+111+201+146+123+118
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/3UP1_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit