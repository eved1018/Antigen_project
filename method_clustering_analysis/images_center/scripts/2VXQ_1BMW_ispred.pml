delete all 
    fetch 1BMW.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+34+39+40+41+43+65+67+68+75+76+77+78+79+80
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['23+57+70+22+26+24+56+61+35+36+40+60+25+37+58+39+28+38+34+59+27']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/2VXQ/2VXQ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit