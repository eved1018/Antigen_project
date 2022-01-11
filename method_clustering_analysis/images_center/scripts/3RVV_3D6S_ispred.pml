delete all 
    fetch 3D6S.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 14+16+18+19+21+156+157+158+159+181+182+186+199+202+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['202+143+210+191+192+211+26+208+217+214+193+25+206+215+209+125+198+197+199+200+123+195+144+28+216+201+212+27+213+194+196+207']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3RVV/3RVV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit