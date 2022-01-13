delete all 
    fetch 6CHX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 135+136+137+153+159+190+192+193+194+196+198+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 173+208+52+53+55+72+74+75+76+81+82+83+84
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 129+160+187+188+190+192+196+197+198+199+201+214+217+220+248
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4YK4/4YK4_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit