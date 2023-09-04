delete all 
                        fetch 5TXF.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 256+257+258+259+260+315+317+318+319+320+342+343+350+351+354+355+357+358+360+367+369+371+373
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 63+49+48+70+58+65+73+68+54+55+69+45+51+50+44+52+46+47+53+243+242+244 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color green, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 63+49+48+70+58+65+73+68+54+55+69+45+51+50+44+52+46+47+53+243+242+244
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 63+49+48+70+58+65+73+68+54+55+69+45+51+50+44+52+46+47+53+243+242+244
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/results2_w_o_clustering/images/5BV7_5TXF_dockpred.png,width=900, height=900,dpi = 350,ray=1
                        quit