delete all 
    fetch 1V7M.V
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 57+58+61+68+71+75+98+102+105+106+109+110+111+112+113+114+115
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 102+106+107+10+111+110+49+9+99+7+144+145+50+52+46+47+53+109
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 28+88+78+85+123+32+33
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1V7M/1V7M_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit