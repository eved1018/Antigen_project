delete all 
    fetch 3B9K.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 22+23+24+25+26+27+28+51+53+54+57+71+72+73+74+75+76+77+78
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 105+56+57+102+99+108+72+55+58+5+101+54+32+75+104+106+103+6+100+73+47+109+76+1
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3B9K/3B9K_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit