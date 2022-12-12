delete all 
                    fetch 6MXU.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 98+131+133+134+135+136+153+155+156+157+189+193+194+226
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 189+198+156+94+143+194+155+140+222+226+193+227+233+190+224+135+134+137+133+244
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 28+310+311+38+42+47+34+37+321+318+33+30
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/v2/results/4O58/4O58_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit