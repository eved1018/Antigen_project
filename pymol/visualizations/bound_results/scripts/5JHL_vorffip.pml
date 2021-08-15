delete all 
    fetch 5JHL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 76+77+101+102+104+106+107+108
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 107+104+382+401+108+101+15+347+106+13+322+323+18+20+348+77+384+225+12+10+102+57+403+22+355+399+14+11+398+6+4+16+357+103
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5JHL/5JHL_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit