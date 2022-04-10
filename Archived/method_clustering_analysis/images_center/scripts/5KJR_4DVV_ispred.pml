delete all 
    fetch 4DVV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 51+52+53+54+71+72+73+74+75+76+77+78+103+106+107+217+221
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['78+62+79+70+80+67+64+63+460+76+463+61+60+461+462+464+71+58+81+68+465+59+72+77+459']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5KJR/5KJR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit