delete all 
    fetch 2QM9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+35+36+37+56+131
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 56+32+27+35+57+55+28+76+87+45+75+68+0+73+98+58+44+14+11+37+88+17+67+77+99+15
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5C0N/5C0N_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit