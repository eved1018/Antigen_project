delete all 
    fetch 5F3H.J
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 25+30+31+33+34+35+36+83+85+87+91+92+93+94+95
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+101+28+88+94+95+79+86+93+85+34+20+35+36+33+27+31
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 49+59+66+56+55+50+52
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5F3H/5F3H_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit