delete all 
    fetch 2XQY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 332+333+334+335+337+350+351+353+354+356+357+358+361+362+365+370+371+372+373
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 558+617+616+614+600+446+334+452+447
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 329+265+139+138+228+148+234+195+181+194+223+196+141+140+183+222+226+193+144+179+225+146+230+137+331+330
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2XQY/2XQY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit