delete all 
    fetch 3X3F.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 87+89+90+91+92+102+109+110+111+112+113+115
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 112+89+111+107+109+91+80+141+137+95+110+92+115+83+90+114+93+106+142+98+96
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3X3F/3X3F_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit