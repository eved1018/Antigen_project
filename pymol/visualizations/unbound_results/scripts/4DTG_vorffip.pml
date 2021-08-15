delete all 
    fetch 1ADZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 17+18+19+20+24+26+28+30+31+33+35+38+39+40+41+43+57
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 56+55+47+2+27+30+1+24+19+59+12+26+16+29+41+23+13+58+17+50+63
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