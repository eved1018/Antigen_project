delete all 
    fetch 1YG9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 199+200+201+232+233+234+235+236+237+248+250+251+253+254+256+257+270+272
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 113+114+115+116+242+249+279+28+283+288+290+292+43+44+47+51+52+55+70+72+83
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi -2+-4+-5+0+144+158+159+172+173+326
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3LIZ/3LIZ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit