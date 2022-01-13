delete all 
    fetch 5NIU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 49+51+52+54+56+66+68+69+115+117+119+120+121
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 113+115+122+123+18+20+51+54+56+58+61+68+69+70
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 133+134+135+137+138+139+140+141+142+143
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5GGT/5GGT_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit