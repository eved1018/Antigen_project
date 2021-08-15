delete all 
    fetch 2VSC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 3+27+35+37+101+102+103+104
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 106+112+111+109+108+12+104+107+14+105+3+113+110+88+115+103+22+8+5+4+29+114+6+11
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5TZT/5TZT_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit