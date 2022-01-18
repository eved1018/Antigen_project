delete all 
    fetch 1WEJ.F
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+37+58+60+61+62+96+99+100+103+104
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 100+103+38+104+39+62+61+60+42+3+2+1+34+37+36
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 28+16+17+12+11+80+81+45+27
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1WEJ/1WEJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit