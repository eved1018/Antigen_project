delete all 
    fetch 5WTR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+5+6+9+55+57+59+62+107+110+111+113+114+115+164+168+169+172+173+176
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 113+118+120+121+165+166+170+171+172+173+2+3+62+64
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 135+139+140+144+147+148+151+29+82+86+88+91+92
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5H35/5H35_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit