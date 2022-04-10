delete all 
    fetch 1JRH.I
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 47+49+50+51+52+53+54+55+56+76+78+79+82+84+98
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 49+36+102+25+39+105+101+103+24+35+77+52+78+90+104+26+100+91+38+76+61+50+37
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1JRH/1JRH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit