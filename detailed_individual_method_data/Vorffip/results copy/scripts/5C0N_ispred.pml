delete all 
    fetch 5C0N.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+35+36+37+56+131
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 86+66+58+44+46+48+87+88+37+35+67+122+28+89+125+98+45+41+31+65+68+123+47+99+5
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