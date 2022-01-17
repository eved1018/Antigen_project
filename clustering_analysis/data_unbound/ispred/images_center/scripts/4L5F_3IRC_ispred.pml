delete all 
    fetch 3IRC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 305+306+307+309+310+325+326+327+328+329+330+361+362
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 317+310+311+349+374+398+370+397+368+396+394+343+342+395+352+350+321+318
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 301+300+299+355+357
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4L5F/4L5F_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit