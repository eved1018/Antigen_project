delete all 
    fetch 2QM9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 23+24+25+26+27+28+29+30+31+32+35+57+76+77+78+97+98+100
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['54+57+33+26+29+56+35+32+30+36+37+58+28+38+34+59+55+27+31']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5D8J/5D8J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit