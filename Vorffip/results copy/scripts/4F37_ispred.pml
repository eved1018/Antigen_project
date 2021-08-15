delete all 
    fetch 4F37.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+3+4+5+6+7+8+10
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 71+75+72+13+14+74+76+11+15+12+68+48+8+7+9+6+19+10+44+65+45+16+29+5
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4F37/4F37_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit