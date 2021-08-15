delete all 
    fetch 2QM9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 23+24+25+26+27+28+29+30+31+32+35+57+76+77+78+97+98+100
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 28+31+32+27+29+35+26+0+56+58+86+-3+85+57+87+-1+-2+68+47+5+66+77+2+34+17+30
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5D8J/5D8J_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit