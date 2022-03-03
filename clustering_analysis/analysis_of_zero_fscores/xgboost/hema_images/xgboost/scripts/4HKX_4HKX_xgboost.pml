delete all 
    fetch 4HKX.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 135+189+193+219+225+134+137+136+153+226+155+190+194+187+158+196+159+160+192
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 201+214+216+160+217+159+158+212+210+199+198+211+205+220+221+192+244+246
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 142+81+141+82+140+55+144+52+84+53
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/4HKX/4HKX_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit