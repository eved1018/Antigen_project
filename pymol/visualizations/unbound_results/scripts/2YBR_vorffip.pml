delete all 
    fetch 1CN2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 7+14+15+17+18+19+22+24+27+42+43+44+45
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 47+13+32+40+42+44+43+54+50+17+23+35+30+28+18+1+52+27+53+66
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2YBR/2YBR_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit