delete all 
    fetch 4HKX.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 160+158+196+159+192+193+219+135+189+190+194+187+155+225+134+137+136+153+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+201+163+212+210+98+211+209+233+246
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 103+107+110+77+75+74+73+57+81+83+82+55+86+87+52+85+84+53
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/dockpred/Images/4HKX/4HKX_dockpred.png,width=900, height=900,dpi = 350,ray=1
    quit