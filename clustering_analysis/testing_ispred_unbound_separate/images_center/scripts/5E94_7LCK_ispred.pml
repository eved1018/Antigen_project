delete all 
    fetch 7LCK.R
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 29+30+31+32+33+35+36+39+40+43+68+137+138+141+142+145
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 164+175+254+255+256+258+267+270+332+333+336+337+338+347+349+350+351+354+405
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 143+146+199+200+224+225+228+230+289+290+291+303+307+369+370+384
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5E94/5E94_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit