delete all 
    fetch 5C0N.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+35+36+37+56+131
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 89+88+48+65+67+66+5+68+41+45+86+87+44+46+47
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 28+58+98+99+35+37+122+123+31+125
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5C0N/5C0N_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit