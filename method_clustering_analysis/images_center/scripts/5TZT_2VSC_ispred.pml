delete all 
    fetch 2VSC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 3+27+35+37+101+102+103+104
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['111+113+108+109+102+115+112+105+6+8+106+93+9+107+103+114+110+104+10+7']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5TZT/5TZT_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit