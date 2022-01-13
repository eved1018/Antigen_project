delete all 
    fetch 1I16.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 38+39+40+42+43+44+45+46+51+53+63+65+66+94+95+96+97+99+102
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 103+111+127+128+129+49+52+53+54+55+56+62+63+64+65+74+97
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 1+10+2+3+5+6+7+8
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5FB8/5FB8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit