delete all 
    fetch 1KDC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+57+60+61+64+68+70+95+96+97+98+105+106+120+121+124+127+135
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 61+70+73+9+95+68+97+96+87+26
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 101+106+113+105+110+138+134+137+123+127+133+126+130+124+131
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/1NSN/1NSN_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit