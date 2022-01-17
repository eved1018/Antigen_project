delete all 
    fetch 2VSC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 35+37+39+46+49+51+53+54+56+58+59+99+101+102
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+101+10+11+9+8+4+6+97+3+26+27+24
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+103+106+112+113+111+105+104+110+109+108
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5TZ2/5TZ2_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit