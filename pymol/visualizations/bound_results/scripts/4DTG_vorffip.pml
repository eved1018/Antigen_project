delete all 
    fetch 4DTG.K
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 10+11+12+13+17+19+21+23+24+26+28+31+32+33+34+36+50
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 16+41+40+15+17+39+18+44+19+22+14+42+43+5+48+9+6+52+37+34
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4DTG/4DTG_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit