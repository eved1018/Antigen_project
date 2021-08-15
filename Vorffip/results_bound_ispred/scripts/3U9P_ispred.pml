delete all 
    fetch 3U9P.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 3+4+5+6+7+8+9+83+84+87+89+100+101+103+120+121+122
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 72+73+66+77+65+76+1+74+83+75+84+166+171+94+64+9+3+2+49+8+78+23+46+6+170+169
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3U9P/3U9P_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit