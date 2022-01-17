delete all 
    fetch 3IFD.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 16+18+19+20+21+23+24+45+46+47+49
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 13+14+18+27+28+30+44+46+47+48+49+50+52+54+67
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 10+11+5+7+8+9
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4DN4/4DN4_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit