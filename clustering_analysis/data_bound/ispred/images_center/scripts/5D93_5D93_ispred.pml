delete all 
    fetch 5D93.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 35+36+37+38+71+72+74+75+77+78+81+82+84+85+142+143+144+145+146+148
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 261+258+270+265+271+273+164+237+197+184+185+256+268+255+245+246
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 77+75+72+142+143+47+121+120+35+37+36+130+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5D93/5D93_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit