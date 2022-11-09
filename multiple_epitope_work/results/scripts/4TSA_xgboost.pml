delete all 
                    fetch 4KXI.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 21+22+23+102+103+104+106+109+111+112+113+116+117
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 100+101+103+102+62+74+48+71+73+47+21
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 114+117+116+106+112+113+5+34+23+22+33+118+119
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/results/4TSA/4TSA_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit