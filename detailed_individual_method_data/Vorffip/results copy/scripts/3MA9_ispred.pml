delete all 
    fetch 3MA9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+22+23+26+27+28+30+31+33+34+35+38+50+51+53+54+58+61+62+68+205+208+209+212
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 184+111+199+212+9+171+202+24+153+155+6+157+177+26+34+205+37+185+3+148+144+90+146+54+69+147+180
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3MA9/3MA9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit