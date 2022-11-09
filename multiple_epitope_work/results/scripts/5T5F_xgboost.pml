delete all 
                    fetch 2KC0.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 82+84+85+87+89+91+115+117+118+119+121+122+123
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 117+113+59+43+83+82+41+51+87+90+121+120+35+123+127+126+118+130+124+119
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 188+200+160+149+217+71+232+151+186+243+244
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/results/5T5F/5T5F_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit