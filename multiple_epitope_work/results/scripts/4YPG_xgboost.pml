delete all 
                    fetch 1ITF.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 2+53+54+57+58+61+64+65+68+86+89+90+92+93+96+97+99+100+101+111+113+116+120
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 13+77+149+68+40+41+152+120+37+33+25+19+125+30
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 100+101+106+113+105+110+89+58+99+94+97+96
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/results/4YPG/4YPG_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit