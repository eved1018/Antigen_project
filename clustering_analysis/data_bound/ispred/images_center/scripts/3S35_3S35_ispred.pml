delete all 
    fetch 3S35.X
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 238+241+243+266+267+270+271+272+275+293+294+295+298+299+326+327+328+329
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 277+315+314+258+313+312+221+219+255+318+285
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 276+263+275+261+329+328+270+271+295+321+269+296+327
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3S35/3S35_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit