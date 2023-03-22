delete all 
                        fetch 5EDU.B
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 195+198+199+200+201+203+206+218+367+409+410+413+416+417+429+432+433+435+436+437+438+439+440
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 706+673+664+517+500+567+564+561+830+560+832+829+568+796+620+807+556+679+682+697+720+695+642+497+496+680
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 200+203+367+206+199+198+433+435+437+436+281+279
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/3PGF_5EDU_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit