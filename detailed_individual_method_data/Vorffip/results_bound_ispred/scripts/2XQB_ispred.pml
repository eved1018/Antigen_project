delete all 
    fetch 2XQB.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 22+23+26+38+41+44+45+46+48+49+52+53+55+64+67+68+71+72+75+88+89+93
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 81+45+49+84+52+83+16+6+17+112+55+72+113+4+15+53+57+75+21+111+23+34+56
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2XQB/2XQB_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit