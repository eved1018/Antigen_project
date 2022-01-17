delete all 
    fetch 2B8U.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+20+69+70+71+73+74+75+77+78+81
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 128+12+9+92+2+1+122+123+36+127+126+118+124+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 63+77+74+64+70+66+72+69+84+23
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5FHX/5FHX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit