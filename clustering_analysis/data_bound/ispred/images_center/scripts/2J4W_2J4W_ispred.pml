delete all 
    fetch 2J4W.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 427+428+431+432+433+434+435+436+437+450+451+452
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 439+429+426+427+421+423+422+441
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 449+432+433+431+434+435+451+450+452+453
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2J4W/2J4W_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit