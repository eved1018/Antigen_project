delete all 
    fetch 2Q21.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 17+21+25+27+29+31+32+33+34+35+36+37+38+39+40+61+63+64
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['62+11+57+65+33+12+67+63+13+29+61+17+35+32+30+36+60+37+66+58+68+28+38+16+34+59+31+10']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/2UZI/2UZI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit