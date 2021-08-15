delete all 
    fetch 1BQL.Y
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 41+43+44+45+46+48+53+67+68+69+70+81+84
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 35+125+114+34+33+45+46+113+123+112+78+73+109+106+47+101+21+44+62+61+116+43+118+126
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1BQL/1BQL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit