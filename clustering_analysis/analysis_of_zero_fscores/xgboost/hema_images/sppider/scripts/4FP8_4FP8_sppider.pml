delete all 
    fetch 4FP8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+133+134+135+136+137+145+153+155+156+186+189+190+192+193+194+226+228
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 104+201+229+163+217+210+173+205+208+209+221+223+222+218+124
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 276+303+277+304+305+307+299+294+308+309+296+292+293+291+290
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/sppider/Images/4FP8/4FP8_sppider.png,width=900, height=900,dpi = 350,ray=1
    quit