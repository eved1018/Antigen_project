delete all 
    fetch 5OMZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 13+46+48+49+50+53+54+56+57+58+59+60+61+64+97
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['111+1+7+113+11+89+3+12+13+2+112+5+6+8+60+14+15+9+114+110+97+10+4+115']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5KVF/5KVF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit