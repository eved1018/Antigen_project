delete all 
    fetch 4J6R.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+122+124+198+276+278+279+280+281+282+356+365+366+367+368+370+371+425+426+427+430+457+458+459+460+461+462+463+469+473+474+475
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 464+458+459+463+461+460+367+432+368+425+431+434+423+436+280+281+282+279+278+440+441
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 76+77+75+73+72+80+221+223+222+79+78+250
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4J6R/4J6R_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit