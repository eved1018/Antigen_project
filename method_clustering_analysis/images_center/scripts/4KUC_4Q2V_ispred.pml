delete all 
    fetch 4Q2V.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 53+92+98+99+101+102+105+106+109+112+113+114+116
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['241+242+222+229+260+261+230+217+224+228+225+40+226+221+244+220+223+263+262+240+243+227+247']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4KUC/4KUC_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit