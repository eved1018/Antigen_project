delete all 
    fetch 5NXS.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 291+296+297+299+300+301+302+349+351+353+357+358+359+360+361
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+317+115+329+328+116+264+112+338+113+111+313+205+157+323+322+320+321+319+324+318+326+327
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 89+58+65+43+55+45+93+46+90+293
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5F3B/5F3B_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit