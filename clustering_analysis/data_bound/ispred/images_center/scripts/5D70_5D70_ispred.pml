delete all 
    fetch 5D70.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 10+11+12+13+15+16+17+20+21+24+83+86+87+119+120
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 115+16+13+12+10+89+49+9+51+79+86+87+50+20+121+120+21+122+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 28+34+36+33+24
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5D70/5D70_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit