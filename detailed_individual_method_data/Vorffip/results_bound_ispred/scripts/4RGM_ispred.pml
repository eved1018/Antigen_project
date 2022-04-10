delete all 
    fetch 4RGM.S
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+19+20+22+23+26+29+30+31+58+59+60+88+90+110+177+178
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 94+44+90+91+93+45+96+92+209+177+212+143+9+10+46+178+8+126+215+233+222+144+42+20+109+58+47+236
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4RGM/4RGM_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit