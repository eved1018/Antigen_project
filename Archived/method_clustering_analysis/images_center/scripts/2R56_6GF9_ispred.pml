delete all 
    fetch 6GF9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+20+43+44+45+47+57+59+65+66+67+68+70+125+126+127+154+156+157+158+162
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['111+78+113+62+79+109+65+67+64+63+76+2+61+112+36+60+66+114+75+81+110+144+88+28+77+116+27+115']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/2R56/2R56_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit