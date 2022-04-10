delete all 
    fetch 5UGY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 95+134+135+136+137+138+145+153+155+156+158+159+160+187+188+189+190+192+193+194+196+222+225+226+227
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 9+7+8+6+4+24+11+322+12+311+10+264+211+309+326+308+149+324+98+256+317+212+104+119+72+101+76+208+103+321+51+36
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5UGY/5UGY_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit