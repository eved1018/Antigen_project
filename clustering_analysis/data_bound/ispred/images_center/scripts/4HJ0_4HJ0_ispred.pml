delete all 
    fetch 4HJ0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+33+36+37+39+40+43+47+65+67+68+87+89+90+113+115+119
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 112+111+58+59+57+54+55
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 115+113+39+67+68+40+41+86+90+34+35+37+122+36+32+33
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4HJ0/4HJ0_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit