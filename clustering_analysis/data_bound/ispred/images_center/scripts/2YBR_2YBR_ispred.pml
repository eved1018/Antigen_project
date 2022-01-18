delete all 
    fetch 2YBR.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 7+14+15+17+18+19+22+24+27+42+43+44+45
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 15+14+17+43+42+50+44+20+21+23+26+27+31+19+18+24
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 62+63+59+53
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2YBR/2YBR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit