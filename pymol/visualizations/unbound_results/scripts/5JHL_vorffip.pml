delete all 
    fetch 5JHM.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 76+77+101+102+104+106+107+108
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 108+101+107+106+15+13+20+102+382+22+11+347+16+353+104+292+399+18+225+354+355+76+384+404+405+323+322+357+10+381+36+406+403+57
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