delete all 
    fetch 1CEJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 8+9+10+11+13+14+23+24+25+26+28+38+39
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 13+14+15+3+32+36+37+38+59+6+8+82+85+88+95
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 45+46+48+64+68+69+72+73
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/1OB1/1OB1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit