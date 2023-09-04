delete all 
                        fetch 1ALU.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 30+33+34+37+40+67+69+74+75+76+164+168+171+172+175+176+178+179+182+183
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 114+128+28+117+113+110+121+27+31+19+118+124+125+24 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color green, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 114+128+28+117+113+110+121+27+31+19+118+124+125+24
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 114+128+28+117+113+110+121+27+31+19+118+124+125+24
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/results2_w_o_clustering/images/4ZS7_1ALU_dockpred.png,width=900, height=900,dpi = 350,ray=1
                        quit