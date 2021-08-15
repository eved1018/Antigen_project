delete all 
    fetch 5F3B.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 25+30+31+33+34+35+36+83+85+87+91+92+93+94+95
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 49+27+31+52+46+55+50+66+42+29+93+20+59+62+48+99+51+98+54+100+63+60+28+12+22
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5F3B/5F3B_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit