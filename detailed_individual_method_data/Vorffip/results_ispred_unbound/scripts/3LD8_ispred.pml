delete all 
    fetch 6MEV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 53+55+57+58+61+62+65+158+291+319+320+322+326
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 332+338+333+336+215+216+212+337+217+187+191+321+34+28+339+188+335+341+33+340+32+219+310+331+190+211+334+30+306+168+29+221
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3LD8/3LD8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit