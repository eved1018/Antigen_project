delete all 
    fetch 3K7B.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 116+118+119+155+156+157+170+172+173+174+175
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['163+111+99+143+108+165+109+102+162+184+112+105+164+106+185+107+98+157+103+110+104+169+100+183+101']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4LQF/4LQF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit