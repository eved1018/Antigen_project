delete all 
    fetch 4UTC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 274+310+311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['74+299+99+300+108+109+102+296+76+105+298+106+334+294+355+332+297+107+98+103+75+295+301+104+100+77+101']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4UTA/4UTA_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit