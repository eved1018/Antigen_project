delete all 
    fetch 3T2N.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 252+317+320+321+323+324+325+326+327+328+329+330+331+333+341+383+384+385+386+387
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 329+328+388+167+173+341+168+385+384+386+325+330+324+326+327+290
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 100+103+48+70+58+367+366+158+71+172+99+66+57+68+141+69
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3T2N/3T2N_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit