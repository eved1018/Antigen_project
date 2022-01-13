delete all 
    fetch 5NXS.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 291+296+297+299+300+301+302+349+351+353+357+358+359+360+361
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 111+112+113+114+115+116+157+205+264+313+317+318+319+320+321+322+323+324+326+327+328+329+338
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 293+43+45+46+55+58+65+89+90+93
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5F3H/5F3H_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit