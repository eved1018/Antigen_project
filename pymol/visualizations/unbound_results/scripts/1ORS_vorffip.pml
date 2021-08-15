delete all 
    fetch 2KYH.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 107+111+112+113+114+115+116+117+119+123
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 54+92+46+37+7+47+48+49+53+5+76+83+8+79+57+112+149+151+116+127+29+30+17+89+150+82+120
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1ORS/1ORS_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit