delete all 
    fetch 1S6N.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 11+15+16+17+18+39+41+42+74+75+76+77+98+99+100
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+115+106+110+56+54+109+30
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 100+16+12+60+59+67+9+98+72+57+5+4+40+6+97+19
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/1ZTX/1ZTX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit