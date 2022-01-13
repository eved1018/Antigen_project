delete all 
    fetch 5OMZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 7+21+22+23+24+25+26+27+28+33+35+68+70+72+73+78+79+80+81+83
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1+109+110+111+113+114+115+2+28+4+5+63+64+65+67
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 10+11+12+13+14+15+55+74+9+97
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5KVD/5KVD_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit