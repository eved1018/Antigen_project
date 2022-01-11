delete all 
    fetch 3PV7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 41+67+72+74+75+76+87+89+90+91+92+110+111+113+115+116+203
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['163+173+202+210+168+128+165+207+211+26+208+127+198+209+125+172+197+129+200+171+195+201+212+199+194+130+196+126+175']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4ZSO/4ZSO_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit