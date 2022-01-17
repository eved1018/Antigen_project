delete all 
    fetch 5WTR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+5+6+9+55+57+59+62+107+110+111+113+114+115+164+168+169+172+173+176
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 113+62+165+171+170+172+166+173+3+2+121+120+118
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+139+88+148+64+82+140+86+92+144+151+91+147+135
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5H35/5H35_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit