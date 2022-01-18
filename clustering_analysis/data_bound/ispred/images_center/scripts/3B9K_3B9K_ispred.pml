delete all 
    fetch 3B9K.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 22+23+24+25+26+27+28+51+53+54+57+71+72+73+74+75+76+77+78
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 76+75+58+73+72+57+56+54+55+47+32
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 100+101+103+102+106+105+104+99+5+6+1+109+108
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3B9K/3B9K_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit