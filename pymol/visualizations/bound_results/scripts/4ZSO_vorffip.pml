delete all 
    fetch 4ZSO.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 41+67+72+74+75+76+87+89+90+91+92+110+111+113+115+116+203
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 47+98+31+51+184+99+74+72+201+71+102+198+32+24+203+115+52+101+49+186+29+188+36+146+236+37+45+97+162
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4ZSO/4ZSO_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit