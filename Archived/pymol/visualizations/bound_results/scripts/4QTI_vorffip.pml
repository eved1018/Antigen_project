delete all 
    fetch 4QTI.U
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 58+89+90+91+92+94+112+113+114+116+118+174
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 116+34+129+88+211+103+89+142+37+32+40+212+65+130+35+107+30+66+63+90+75+74+73+195+2+141+106+127+22+154
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4QTI/4QTI_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit