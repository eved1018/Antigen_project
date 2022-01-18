delete all 
    fetch 1FBI.X
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 14+15+16+20+21+63+71+73+75+77+93+96+97+100+101
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+103+102+62+61+75+73+45+46+47+21
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+112+113+6+34+121+109+35+122+123+33+118+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1FBI/1FBI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit