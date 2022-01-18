delete all 
    fetch 3NGB.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+124+198+276+278+279+280+281+282+365+367+368+371+430+456+457+458+460+461+463+465+467+469+473
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+459+462+461+460+407+280+282+457+278
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 301+299+76+61+60+204+73+199+198+72+208+80+81+209+425+79+78+444+325+324+442+124+441
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3NGB/3NGB_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit