delete all 
    fetch 3GIA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 3+4+5+6+305+307+309+310+311+312+313+316+318+319+435
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 11+12+145+149+150+223+226+3+321+325+326+363+372+373+374+418+421+423+424+57
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 182+187+188+262+339+392+395+396+397+398+399+400+403
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3GI8/3GI8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit