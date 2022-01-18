delete all 
    fetch 4YUE.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 55+56+57+59+71+75+76+77+78+79+82+105+117+119+122
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 106+75+142+68+144+145+146+34+109+122+26+118
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 98+99+56+40+54+97+82+55+79+52+84
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4YUE/4YUE_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit