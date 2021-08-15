delete all 
    fetch 1INR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 71+74+75+78+79+82+83+125+128+129+130+131+132+133+134+136+137
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 140+30+53+143+47+153+147+149+139+146+49+154+60+150+128+52+46+111+158+138+48+55+144+156+71+76
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1LK3/1LK3_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit