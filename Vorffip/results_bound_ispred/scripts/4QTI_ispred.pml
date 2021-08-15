delete all 
    fetch 4QTI.U
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 58+89+90+91+92+94+112+113+114+116+118+174
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 89+262+34+32+37+38+264+36+39+141+76+31+35+16+260+33+74+20+79+40+18+207+88+208+106+142+71+274+130+107
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4QTI/4QTI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit