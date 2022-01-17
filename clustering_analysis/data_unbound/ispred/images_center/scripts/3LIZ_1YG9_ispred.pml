delete all 
    fetch 1YG9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 199+200+201+232+233+234+235+236+237+248+250+251+253+254+256+257+270+272
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+115+28+288+249+116+113+70+72+43+83+55+51+44+52+47+242+283+292+279+290
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 159+158+172+173+-2+144+0+-4+-5+326
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3LIZ/3LIZ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit