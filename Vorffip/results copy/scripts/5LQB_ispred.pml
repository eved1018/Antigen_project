delete all 
    fetch 5LQB.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 50+52+53+54+55+57+58+61+62+63+91+92+93+94+96+97
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 39+36+58+32+57+63+60+150+101+61+62+136+131+146+147+92+129+51+133+65+53+96+29+107
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5LQB/5LQB_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit