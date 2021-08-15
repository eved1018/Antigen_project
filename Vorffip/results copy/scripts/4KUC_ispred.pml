delete all 
    fetch 4KUC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 53+92+98+99+101+102+105+106+109+112+113+114+116
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 247+243+51+49+225+229+251+118+223+26+50+182+244+23+157+109+190+114+227+259+115+262+228+41+189+193+260+112+222+27
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4KUC/4KUC_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit