delete all 
    fetch 3HI6.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 140+141+142+143+144+200+201+202+203+204+205+206+239+241+242+243+263+264+269
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 201+177+176+200+202+148+175+203+204+210+205+143+141+140+144+145+243+244
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 229+189+164+198+194+197+187+193
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3HI6/3HI6_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit