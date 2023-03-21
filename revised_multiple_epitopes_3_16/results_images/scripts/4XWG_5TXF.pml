delete all 
                        fetch 5TXF.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 48+49+50+51+53+54+58+63+65+66+68+69+70+71+75+78+238
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 49+70+71+68+54+69+51+50+52 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color black, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 373+371+369+235+395+350+21+320+319
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 277+329+339+272+340+82+218+280+295+292+286+330+291+332+333
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/results_images/images/4XWG_5TXF_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit