delete all 
    fetch 4HF5.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 144+137+140+189+190+131+136+156+155+158+226+135+134+145+133+193+194+153+143
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+15+317+14+28+16+17+13+12+39+11+294+323+21+320+308+321+319+325+324+318+27+31+326+18+30
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 107+111+207+239+209+240
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/4HF5/4HF5_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit