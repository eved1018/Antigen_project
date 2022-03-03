delete all 
    fetch 5A3I.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 162+163+165+121+137+71+72+115+252+145+113+164+116+118+120+114
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 15+316+317+315+314+17+10+313+11+9+8+5+-1+4+6+7+3+2+20+320+321+318+19+18
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 311+305+306+63+66+296+32+291
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/5A3I/5A3I_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit