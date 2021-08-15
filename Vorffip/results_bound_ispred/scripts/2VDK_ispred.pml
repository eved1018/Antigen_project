delete all 
    fetch 2VDK.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 77+78+79+80+81+82+84+149+154+158+205+206+208+209+210+211+213+214+215
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 190+353+73+262+312+156+322+47+288+263+314+80+341+213+112+150+211+71+90+285+46+228+226+273+149+159+158+380+231+161+41+48+45+89
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2VDK/2VDK_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit