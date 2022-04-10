delete all 
    fetch 4KUC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 53+92+98+99+101+102+105+106+109+112+113+114+116
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 115+116+243+240+241+118+114+154+161+234+250+246+251+247+157+152+156+153+229+257+183+117+235+236+54+244+91+189+105+94
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4KUC/4KUC_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit