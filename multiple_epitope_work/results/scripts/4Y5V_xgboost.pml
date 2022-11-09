delete all 
                    fetch 1ERN.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 33+34+59+60+61+62+87+88+89+91+92+93+94+95+149+150+152+153+202+203+204+205
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 114+62+88+60+59+65+94+95+92+93+87+91+34
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 117+116+76+202+149+203+159+204+205+208+209+150+153+152+20
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/results/4Y5V/4Y5V_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit