delete all 
    fetch 5OMZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 7+21+22+23+24+25+26+27+28+33+35+68+70+72+73+78+79+80+81+83
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['111+1+113+89+3+12+13+2+112+5+6+60+14+15+114+110+97+4+115']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5KVD/5KVD_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit