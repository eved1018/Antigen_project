delete all 
    fetch 4YK4.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 135+136+137+153+159+190+192+193+194+196+198+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 74+80+55+75+76+77+82+101+81+149+117+212+211+98+221+73+72+210+229+97+223+256+231+233+220+160+79+115
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4YK4/4YK4_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit