delete all 
                    fetch 1IK0.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 32+52+53+54+55+56+57+58+59+61+62+64+65+66+68+69+74+76+77
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 15+100+101+14+112+107+12+111+105+104+11+62+109+108+23+22+18
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 38+88+98+94+86+52+91
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/results/4I77/4I77_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit