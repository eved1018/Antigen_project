delete all 
    fetch 4JLR.S
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 65+68+69+72+73+78+79+82+83+85+86+89
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 89+77+75+70+72+80+81+68+83+82+79+78+84+90
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+100+62+61+58+59+98+97+47
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4JLR/4JLR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit