delete all 
    fetch 4DN4.M
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 16+18+19+20+21+23+24+45+46+47+49
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 28+49+48+46+47+20+21+23+22+26+27+18+24
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+14+16+13+9+51+50
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4DN4/4DN4_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit