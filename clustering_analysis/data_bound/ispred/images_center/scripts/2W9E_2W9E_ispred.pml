delete all 
    fetch 2W9E.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 142+143+144+145+147+148+149+151+152+153+155+156+197+199+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 201+148+155+197+145+153+146+152+137
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 129+188+162+189+165+164+195+181+194+193+192+186+190+130
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2W9E/2W9E_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit