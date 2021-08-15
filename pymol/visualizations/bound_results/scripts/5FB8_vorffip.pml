delete all 
    fetch 5FB8.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 38+39+40+42+43+44+45+46+51+53+63+65+66+94+95+96+97+99+102
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 40+96+63+65+99+95+100+53+97+103+66+39+43+64+51+41+54+94+52+38+45+62
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5FB8/5FB8_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit