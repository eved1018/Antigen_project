delete all 
    fetch 5A3I.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 71+72+113+114+115+116+118+120+121+137+145+162+163+164+165+252
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 289+316+317+315+314+298+313+9+8+6+7+20+295+297+296+318+293+291+19+290
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 213+159+210+66+205+141+86+145+120+137+269+118
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/ispred/Images/5A3I/5A3I_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit