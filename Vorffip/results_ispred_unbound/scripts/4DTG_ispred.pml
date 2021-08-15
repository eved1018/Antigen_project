delete all 
    fetch 1ADZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 17+18+19+20+24+26+28+30+31+33+35+38+39+40+41+43+57
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 24+25+26+27+23+28+47+34+48+50+37+35+20+22+19+40+51+55+36+38+21
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4DTG/4DTG_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit