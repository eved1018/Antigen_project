delete all 
    fetch 3B2U.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 348+349+384+408+409+412+417+418+438+440+441+443+464+465+466+467+468+469+473
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 361+349+410+358+359+355+357+356+353+409+350+323+320+325+318
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 464+459+465+502+477+488+449+461+411+450+487+485+483
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3B2U/3B2U_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit