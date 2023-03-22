delete all 
                        fetch 4U4W.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 12+15+16+17+19+24+25+27+28+29+32
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred, resi 76+349+71+73+432+180+196+431+342+187+192+437+337+336+295+282+130
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 29+14+103+310+311+107+98+99+95+97+168+231+91+257+309+27
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/images/4JR9_4U4W_xgboost.png,width=900, height=900,dpi = 350,ray=1
                        quit