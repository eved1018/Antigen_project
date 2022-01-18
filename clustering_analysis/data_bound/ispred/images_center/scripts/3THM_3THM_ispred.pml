delete all 
    fetch 3THM.F
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+39+40+41+42+43+44+45+46+48+49+59+60+78+79+80+81+86
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 63+77+74+60+59+65+81+42+82+45+51+86+44+46
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 113+111+94+95+97+96+91+127
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3THM/3THM_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit