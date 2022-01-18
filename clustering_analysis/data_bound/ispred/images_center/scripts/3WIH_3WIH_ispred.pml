delete all 
    fetch 3WIH.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+19+49+50+51+52+53+54+55+56+68+70+71
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 16+17+49+74+70+72+94+95+68+45+51+92+93+50+52+47+53+22+18
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+36+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3WIH/3WIH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit