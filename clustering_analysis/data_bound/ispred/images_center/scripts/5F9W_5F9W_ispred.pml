delete all 
    fetch 5F9W.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+102+275+276+277+278+279+280+281+282+365+367+368+370+371+425+426+427+455+456+457+458+459+461+471+472+473+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 117+299+76+77+202+75+204+73+72+80+81+221+79+421+444+446+325+324+442+441
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 276+458+459+277+275+408+409+280+281+282+457+278
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5F9W/5F9W_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit