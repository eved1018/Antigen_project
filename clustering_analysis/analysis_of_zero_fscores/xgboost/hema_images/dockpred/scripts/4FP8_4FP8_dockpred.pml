delete all 
    fetch 4FP8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 137+186+226+189+190+228+145+98+136+193+135+133+153+194+134+131+156+155+192
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+105+104+63+189+220+94+95+221+223+96+140+222+226+187+92+93+186+227+219+225+91+224+137
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 307+299+294+308+309+269
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/dockpred/Images/4FP8/4FP8_dockpred.png,width=900, height=900,dpi = 350,ray=1
    quit