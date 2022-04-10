delete all 
    fetch 1NSN.S
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+57+60+61+64+68+70+95+96+97+98+105+106+120+121+124+127+135
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 97+105+106+124+61+121+60+96+68+98+64+120+95+57+70+127+65+93+135+9+101+67+71+102+63
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1NSN/1NSN_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit