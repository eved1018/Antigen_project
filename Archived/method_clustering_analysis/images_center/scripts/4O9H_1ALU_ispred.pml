delete all 
    fetch 1ALU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 21+22+23+26+27+30+73+74+75+78+80+129+179+182+183+184
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['141+159+147+158+19+154+143+21+23+153+140+160+22+26+156+24+139+30+145+25+157+20+144+104+155+27+161+142+146']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4O9H/4O9H_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit