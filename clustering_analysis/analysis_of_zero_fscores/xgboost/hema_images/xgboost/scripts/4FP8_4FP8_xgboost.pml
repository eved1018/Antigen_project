delete all 
    fetch 4FP8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 156+131+134+192+155+193+135+228+145+98+136+133+153+194+137+190+186+226+189
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 103+106+107+105+104+110+229+62+214+216+207+210+220+142+94+81+221+223+222+92+78+224+255
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 307+299+294+308+309+296+293
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/xgboost/Images/4FP8/4FP8_xgboost.png,width=900, height=900,dpi = 350,ray=1
    quit