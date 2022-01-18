delete all 
    fetch 5D8J.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 24+25+26+27+28+29+30+31+32+33+36+58+77+78+79+98+99+101
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 89+88+48+67+66+68+6+69+3+93+87+0+46+90+1
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+28+12+76+74+59+78+36+32+33
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5D8J/5D8J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit