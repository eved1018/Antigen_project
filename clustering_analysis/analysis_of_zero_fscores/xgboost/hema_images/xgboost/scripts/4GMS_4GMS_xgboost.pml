delete all 
    fetch 4GMS.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 137+190+135+155+226+193+159+156+194+134+136+131+158+98+157+189+153+196
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+310+105+104+110+299+95+143+294+308+309
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+15+316+317+14+28+16+13+10+39+11+42+34+323+21+23+320+22+325+324+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/4GMS/4GMS_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit