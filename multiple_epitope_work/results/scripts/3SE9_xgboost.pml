delete all 
                    fetch 3TGT.A
                    color blue 
                    set cartoon_transparency,0.75
                    select ann, resi 97+124+275+276+278+279+280+281+282+283+365+366+367+368+371+429+431+455+456+457+458+459+461+462+469+473+476
                    indicate bycalpha ann
                    create annotated, indicate
                    select pred, resi 76+75+74+71+73+72+220+81+221+223+53+246+247
                    indicate bycalpha pred
                    create pred_res, indicate

                    select pred_2, resi 275+328+299+429+367+366+198+432+368+434+423+280+281+122+282+457+324+124+326
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
                    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/multiple_epitope_work/results/3SE9/3SE9_xgboost.png,width=900, height=900,dpi = 350,ray=1
                    quit