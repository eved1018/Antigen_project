delete all 
    fetch 1S6N.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 11+15+16+17+18+39+41+42+74+75+76+77+98+99+100
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['62+54+57+3+56+2+61+5+6+8+60+52+9+58+68+59+53+10+4+7']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1ZTX/1ZTX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit