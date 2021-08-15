delete all 
    fetch 2EIZ.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 14+15+16+19+20+21+62+63+75+77+89+93+96+97+98+100+101+102
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 27+116+23+125+117+118+119+128+22+120+24+112+111+113+106+124+81+121+102+41+103+79+19+114
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2EIZ/2EIZ_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit