delete all 
    fetch 1MLC.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 41+43+45+46+47+48+49+53+67+68+70+79+81+84
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 46+112+45+62+47+61+125+73+68+113+114+74+106+66+109+70+72+43+71+102+48+103+126+49
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1MLC/1MLC_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit