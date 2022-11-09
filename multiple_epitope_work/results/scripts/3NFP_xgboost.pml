delete all 
                    fetch 6VWU.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 139+140+142+143+144+163+165+180+181+256+258+287+290+291+292
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 277+272+266+148+151+280+282+279+278
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 289+258+264+139+188+159+165+181+156+157+180+144+243+241+291+290
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/results/3NFP/3NFP_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit