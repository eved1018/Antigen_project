delete all 
    fetch 4LF3.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+36+64+65+84+85+86+87+108+110+111+112+113+116+122
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 115+117+112+113+111+110+54+55+52+120+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+38+42+45+46+90+34+35+37+32+31+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4LF3/4LF3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit