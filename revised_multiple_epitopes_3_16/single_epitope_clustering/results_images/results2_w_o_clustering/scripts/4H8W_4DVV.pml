delete all 
                        fetch 4DVV.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 51+52+53+58+60+69+71+72+73+74+75+76+77+78+79+103+106+107+114
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 114+107+76+75+74+71+73+72+220+221+223+54+82+222+51+78+50+219+52+53+492+246 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color green, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 114+107+76+75+74+71+73+72+220+221+223+54+82+222+51+78+50+219+52+53+492+246
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 114+107+76+75+74+71+73+72+220+221+223+54+82+222+51+78+50+219+52+53+492+246
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/results2_w_o_clustering/images/4H8W_4DVV_dockpred.png,width=900, height=900,dpi = 350,ray=1
                        quit