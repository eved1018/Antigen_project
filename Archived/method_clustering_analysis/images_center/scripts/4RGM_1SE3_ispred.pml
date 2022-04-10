delete all 
    fetch 1SE3.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+19+20+22+23+26+29+30+31+58+59+60+88+90+110+177+178
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['111+19+113+90+210+21+23+89+211+22+26+208+176+177+94+61+112+179+91+87+93+25+60+209+20+92+110+88+178+212+27']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4RGM/4RGM_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit