delete all 
    fetch 1RJL.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 232+233+250+251+252+253+254+272+273+274+275+276+277
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 276+274+273+272+229+232+233+231+230+280+254+279+278+253
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 263+261+264+265+259+225+292+286+290+284
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1RJL/1RJL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit