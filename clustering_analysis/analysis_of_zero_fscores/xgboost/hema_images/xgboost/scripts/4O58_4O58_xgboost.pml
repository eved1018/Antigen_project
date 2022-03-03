delete all 
    fetch 4O58.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+137+194+156+134+133+131+157+136+153+158+155+226+193+189+145+135
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+15+316+317+28+17+310+42+41+294+34+20+323+21+320+308+321+292+32+324+318+31+18+30
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 110+299+214+142+143+92+91+269
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/4O58/4O58_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit