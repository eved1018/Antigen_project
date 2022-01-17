delete all 
    fetch 7LCK.R
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 29+30+31+32+33+35+36+39+40+43+68+137+138+141+142+145
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 289+303+307+228+200+199+370+369+143+384+225+146+230+224+291+290
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 258+270+338+267+349+405+175+164+354+347+351+350+337+336+256+254+255+332+333
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5E94/5E94_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit