delete all 
    fetch 3M1N.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 44+45+87+123+125+126+131+132+133+134+135+136+147+153+155+174+176+177+178+179+180
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 30+28+32+27+29+31+33+50+26+34+51+37+35+49+115+39+25+167+36+52+56+80+55+47+40+44
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3MXW/3MXW_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit