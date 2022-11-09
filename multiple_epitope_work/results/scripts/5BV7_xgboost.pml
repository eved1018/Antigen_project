delete all 
                    fetch 5TXF.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 256+257+258+259+260+315+317+318+319+320+342+343+350+351+354+355+357+358+360+367+369+371+373
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 114+117+49+48+70+59+57+68+69+51+92+50+53+23+22
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 315+329+338+339+340+369+341+378+323+256+320+334+286+319+330+332+333+284
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/results/5BV7/5BV7_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit