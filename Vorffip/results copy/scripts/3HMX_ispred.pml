delete all 
    fetch 3HMX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 15+17+18+20+23+40+42+43+45+47+54+55+56+58+59+61+62+66
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 279+176+179+304+292+178+305+181+180+161+293+278+228+246+294+157+177+247+160+264+254+283+175+287+303+256+183+291+159+162+229+189
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3HMX/3HMX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit