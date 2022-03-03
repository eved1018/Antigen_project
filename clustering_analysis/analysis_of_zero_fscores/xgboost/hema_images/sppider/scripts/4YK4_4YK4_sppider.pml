delete all 
    fetch 4YK4.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 135+136+137+153+159+190+192+193+194+196+198+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 214+207+212+210+199+198+211+205+220+208+221+219+240
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 107+76+77+75+74+72+57+80+81+143+82+55+79+78+84
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/sppider/Images/4YK4/4YK4_sppider.png,width=900, height=900,dpi = 350,ray=1
    quit