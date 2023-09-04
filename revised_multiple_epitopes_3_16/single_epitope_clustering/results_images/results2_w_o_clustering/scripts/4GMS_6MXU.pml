delete all 
                        fetch 6MXU.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 98+131+134+135+136+153+155+156+157+159+189+190+193+194+196+226
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 104+138+63+189+75+220+234+208+142+94+95+143+221+223+96+140+222+226+187+92+145+93+186+227+225+190+91+224+135+136+137 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color green, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 104+138+63+189+75+220+234+208+142+94+95+143+221+223+96+140+222+226+187+92+145+93+186+227+225+190+91+224+135+136+137
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 104+138+63+189+75+220+234+208+142+94+95+143+221+223+96+140+222+226+187+92+145+93+186+227+225+190+91+224+135+136+137
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/results2_w_o_clustering/images/4GMS_6MXU_dockpred.png,width=900, height=900,dpi = 350,ray=1
                        quit