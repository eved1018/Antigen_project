delete all 
    fetch 1BMW.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+34+39+40+41+43+65+67+68+75+76+77+78+79+80
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 13+14+16+36+37+38+47+49+55+58+59+61+63+80+84+87
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 2+25+26+27+3+5+76
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/2VXQ/2VXQ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit