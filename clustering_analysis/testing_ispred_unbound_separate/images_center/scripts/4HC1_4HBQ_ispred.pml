delete all 
    fetch 4HBQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 34+35+37+40+41+42+43+44+45+46+47+48+49+50+51+52+65
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 135+137+138+139+140+141+142+166+174+175+181+202+204+205+206+207+208+209+210
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 147+148+150+151+161+187+193+195+57+92
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4HC1/4HC1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit