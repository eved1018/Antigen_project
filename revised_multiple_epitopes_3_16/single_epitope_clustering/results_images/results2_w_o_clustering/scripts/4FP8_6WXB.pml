delete all 
                        fetch 6WXB.A
                        color blue 
                        set cartoon_transparency,0.75
                        select ann, resi 98+131+133+134+135+136+137+145+153+155+156+186+189+190+192+193+194+226+228
                        indicate bycalpha ann
                        create annotated, indicate

                        select pred_3, 128+104+201+163+189+214+216+160+213+165+212+210+199+167+208+222+126+244 
                        indicate bycalpha pred_3
                        create pred_res_3, indicate

                        show sphere, pred_res_3
                        set sphere_scale,0.5,pred_res_3
                        color green, pred_res_3
                        set sphere_transparency,0,pred_res_3
                        set cartoon_transparency,1,pred_res_3

                        select pred, resi 128+104+201+163+189+214+216+160+213+165+212+210+199+167+208+222+126+244
                        indicate bycalpha pred
                        create pred_res, indicate

                        select pred_2, resi 128+104+201+163+189+214+216+160+213+165+212+210+199+167+208+222+126+244
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
                        png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/revised_multiple_epitopes_3_16/single_epitope_clustering/results_images/results2_w_o_clustering/images/4FP8_6WXB_dockpred.png,width=900, height=900,dpi = 350,ray=1
                        quit