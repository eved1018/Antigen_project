delete all 
                        fetch 5R8B.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 72+73+74+75+81+83+84+86+89+90+92+94+96+97+98+115+116+117+118
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 103+105+110+148+149+5+56+4+6+54+7+51+150+151+46+147+152+53+109+108 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color green, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 103+105+110+148+149+5+56+4+6+54+7+51+150+151+46+147+152+53+109+108
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 103+105+110+148+149+5+56+4+6+54+7+51+150+151+46+147+152+53+109+108
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/results2_w_o_clustering/images/4G6M_5R8B_dockpred.png,width=900, height=900,dpi = 350,ray=1
                        quit