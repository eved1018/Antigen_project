delete all 
    fetch 1XIW.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 35+44+45+46+47+48+49+56+57+78+80+81+82+83+84+85+86
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 21+96+101+98+19+20+94+69+100+99+17+70+92+80+102+14+74+41+22+12+89+97+88
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1XIW/1XIW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit