delete all 
    fetch 2KYH.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 107+111+112+113+114+115+116+117+119+123
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 20+104+74+85+45+80+82+114+16+17+57+49+13+83+32+52+53+51+23+30+108+11+76+26+56+29+31
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1ORS/1ORS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit