delete all 
    fetch 2D9T.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 20+21+33+34+35+36+40+42+44+47+48+49+51+52+53
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 76+63+75+74+70+71+65+73+66+72+69
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 17+48+58+42+7+55+51+47+21+23+24
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3PNW/3PNW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit