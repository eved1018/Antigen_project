delete all 
    fetch 3L5X.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 11+14+15+101+104+105+107+108+109+110
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 77+74+58+59+65+81+82+78+32+31
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 107+12+11+70+9+8+43+40+7+109+108+22+18
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3L5X/3L5X_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit