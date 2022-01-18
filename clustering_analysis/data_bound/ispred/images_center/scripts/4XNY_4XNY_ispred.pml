delete all 
    fetch 4XNY.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+102+105+106+109+276+278+279+280+281+282+283+365+366+367+368+371+426+427+428+429+430+455+456+457+458+459+460+461+463+465+466+469+476
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+459+275+462+461+460+367+280+281+283+282+279+457+278
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 300+204+73+72+220+368+221+223+222+434+421+437+444+122+446+325+442+326
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4XNY/4XNY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit