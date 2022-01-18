delete all 
    fetch 4AG4.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 277+279+281+282+284+307+314+320+335+337+339+340+341+342+365+367+369
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 249+248+213+220+234+235+221+223+222+236+150+219+225+152+218+242+250+246+30+247
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 339+267+313+365+340+342+337+322+281+335+318+284
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4AG4/4AG4_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit