delete all 
    fetch 1ZOO.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 144+147+148+151+155+191+193+194+197+198+199+200+201+203
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 201+176+200+202+175+203+213+204+198+205+143+141+140+197+144+145
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 128+310+305+307+229+232+225+257+308+309+255
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3EOA/3EOA_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit