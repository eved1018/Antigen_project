delete all 
    fetch 5COE.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 156+157+159+160+161+166+181+190+194+197+198
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['158+210+191+192+128+131+207+204+208+127+193+206+209+157+129+195+205+194+130+196+126+203']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4D3C/4D3C_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit