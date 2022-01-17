delete all 
    fetch 2QQI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 294+295+296+297+298+299+302+318+319+321+323+324
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 510+511+512+476+477+570+438+439+571+583+568+451+445+479+478+444+524+452+480+443+456+481+468+454+441
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 382+394+392+322+297+319+278
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/2QQN/2QQN_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit