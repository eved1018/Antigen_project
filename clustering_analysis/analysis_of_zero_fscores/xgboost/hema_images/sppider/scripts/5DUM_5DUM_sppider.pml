delete all 
    fetch 5DUM.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 115+116+118+121+123+124+159+161+162+163+164+165+167+168+240+241+242
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 138+60+217+67+57+80+54+83+82+55+51+52+84+53
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 100+103+102+106+107+111+105+104+49+79+50+109+108
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/sppider/Images/5DUM/5DUM_sppider.png,width=900, height=900,dpi = 350,ray=1
    quit