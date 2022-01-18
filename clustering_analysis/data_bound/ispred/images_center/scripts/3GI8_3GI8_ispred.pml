delete all 
    fetch 3GI8.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+3+4+5+6+305+307+309+310+311+312+313+316+318+319+435
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+274+176+175+398+400+399+397+182+187+337+278+118+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 12+11+363+149+415+372+4+223+419+418+424+226+3+435+421+2+423+422+1
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3GI8/3GI8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit