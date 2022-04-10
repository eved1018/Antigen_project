delete all 
    fetch 3KR3.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 7+9+10+11+12+14+15+17+26+34+35+40+43+44+45+47+48+49+59
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 40+24+19+35+38+10+44+15+23+50+12+62+41+9+45+6+16+14+48+49
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3KR3/3KR3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit