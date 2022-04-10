delete all 
    fetch 1IK0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 11+14+15+101+104+105+107+108+109+110
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['111+108+109+102+112+84+105+83+35+82+36+106+87+37+85+107+103+39+110+88+104+38+101+86']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3L5X/3L5X_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit