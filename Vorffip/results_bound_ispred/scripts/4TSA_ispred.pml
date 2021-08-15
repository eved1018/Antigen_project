delete all 
    fetch 4TSA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 21+22+23+102+103+104+106+109+111+112+113+116+117
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 97+89+103+102+119+8+32+109+78+77+33+75+91+116+76+121+34+9+123+96+113
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4TSA/4TSA_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit