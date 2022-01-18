delete all 
    fetch 4U0R.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 193+202+205+209+212+213+216+328+331+335+338+339+341+342+344
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 460+474+177+200+203+366+204+199+198+181+369+430+197+184+437+444+453+447+468
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 301+499+388+398+399+170+172+426+396+419+386+423
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4U0R/4U0R_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit