delete all 
    fetch 4NNO.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 251+260+267+268+269+270+271+272+273+274+275+276+277+289
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 167+172+173+175+176+179+180+48+51+52+72+73+74+77+96
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 123+129+130+132+219+235+238+239+241+242+245+246+247+248+269
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5HDQ/5HDQ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit