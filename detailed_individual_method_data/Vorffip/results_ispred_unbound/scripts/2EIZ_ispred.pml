delete all 
    fetch 4KXI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 14+15+16+19+20+21+62+63+75+77+89+93+96+97+98+100+101+102
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 116+34+33+47+114+109+113+117+118+45+112+72+61+68+73+44+71+46+128+119+103+70+48+43
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2EIZ/2EIZ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit