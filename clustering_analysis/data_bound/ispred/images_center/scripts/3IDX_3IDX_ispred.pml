delete all 
    fetch 3IDX.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 281+283+365+366+367+368+369+370+371+372+373+384+419+421+425+474
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 128+201+200+207+198+195+194+196+197+122+127+126+125+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 464+458+459+103+106+463+107+105+460+429+367+368+369+434+435+87+280+457
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3IDX/3IDX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit