delete all 
    fetch 1QFU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 94+92+63+143+75+62+78+90+74+271+79+60+274+273+59+50+272+48+49
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 229+189+216+220+143+221+223+96+140+222+226+227+219+225+224+137
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 100+101+103+102+106+107+105+104+63+94+95+92+93+233+91+269
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/dockpred/Images/1QFU/1QFU_dockpred.png,width=900, height=900,dpi = 350,ray=1
    quit