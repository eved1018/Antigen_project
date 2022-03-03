delete all 
    fetch 5UGY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 196+159+135+158+160+193+222+187+194+145+190+192+188+155+138+134+136+156+226+95+227+137+189+153+225
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 15+317+28+315+13+12+10+11+9+8+4+6+7+34+21+35+295+23+321+36+22+32+319+324+318+25+326+24
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 143+79+244+246
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/5UGY/5UGY_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit