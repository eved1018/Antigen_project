delete all 
                    fetch 3IRC.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 300+301+334+336+337+338+339+340+342+343+344+345+346+347+349+350+351+370+371+372+379+382+383+384+386
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 349+348+374+398+370+340+396+394+342+395+346+352+347+350
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 301+300+299+383+354+355+297+330+332
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/results/4FFY/4FFY_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit