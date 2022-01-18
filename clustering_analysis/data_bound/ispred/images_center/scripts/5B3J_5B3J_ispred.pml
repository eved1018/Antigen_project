delete all 
    fetch 5B3J.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 31+32+33+34+55+56+57+58+59+60+61+65+66+67+92
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 248+375+189+376+217+206+220+195+194+192+219+218+256+241+244+247
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+329+328+311+313+359+354+346+345+323+120+308+321+325+330+118
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5B3J/5B3J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit