delete all 
    fetch 4KXI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 15+16+19+20+21+63+73+75+89+93+96+97+98+100+101+102+103
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 27+23+117+119+118+116+121+120+22+24+47+125+70+112+62+81+128+113+66+122+68+111+41+79
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1C08/1C08_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit