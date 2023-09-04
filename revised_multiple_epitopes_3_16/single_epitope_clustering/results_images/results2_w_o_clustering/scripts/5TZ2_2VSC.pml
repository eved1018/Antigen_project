delete all 
                        fetch 2VSC.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 35+37+39+46+49+51+53+54+56+58+59+99+101+102
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 15+14+16+17+13+12+10+11+89+88+9+5+7+91+85+84+24 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color green, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 15+14+16+17+13+12+10+11+89+88+9+5+7+91+85+84+24
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 15+14+16+17+13+12+10+11+89+88+9+5+7+91+85+84+24
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/results2_w_o_clustering/images/5TZ2_2VSC_dockpred.png,width=900, height=900,dpi = 350,ray=1
                        quit