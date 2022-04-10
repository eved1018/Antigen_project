delete all 
    fetch 5TZ2.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 35+37+39+46+49+51+53+54+56+58+59+99+101+102
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 61+62+64+70+53+58+55+57+59+54+60+56+27+26+69+72+71+101+89+102+106+29+67+24
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5TZ2/5TZ2_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit