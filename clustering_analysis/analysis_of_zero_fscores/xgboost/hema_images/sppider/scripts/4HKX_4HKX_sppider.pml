delete all 
    fetch 4HKX.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 134+135+136+137+153+155+158+159+160+187+189+190+192+193+194+196+219+225+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 214+207+158+212+210+199+198+211+205+193+240
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 76+77+75+74+58+73+57+142+143+83+55+79+86+78+52+85+84
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/sppider/Images/4HKX/4HKX_sppider.png,width=900, height=900,dpi = 350,ray=1
    quit