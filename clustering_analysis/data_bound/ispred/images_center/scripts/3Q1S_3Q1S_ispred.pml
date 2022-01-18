delete all 
    fetch 3Q1S.I
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 64+65+66+67+68+69+70+71+76+77+80+173
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 76+62+60+70+164+59+71+73+167+66+72+68+69
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 100+128+101+139+40+41+85+121+136+133+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3Q1S/3Q1S_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit