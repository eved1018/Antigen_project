delete all 
    fetch 1BV1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 42+43+44+45+46+47+48+49+50+51+53+70+72+76+87+97
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 51+72+47+46+43+68+50+45+48+97+49+70+73+101+42+55+24+44+3+5+99+76+108+87+75+6+4
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1FSK/1FSK_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit