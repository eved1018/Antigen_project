delete all 
    fetch 1GHL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 21+23+106+112+113+116+117+118+119+121
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+128+117+116+5+6+34+121+37+122+123+33+118+125+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 103+112+113+49+61+46+47+109+35
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/1JHL/1JHL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit