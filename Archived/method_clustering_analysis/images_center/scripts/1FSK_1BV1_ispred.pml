delete all 
    fetch 1BV1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 42+43+44+45+46+47+48+49+50+51+53+70+72+76+87+97
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['74+54+70+47+46+84+73+43+82+44+52+45+49+71+50+51+81+69+72+53+48']
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1FSK/1FSK_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit