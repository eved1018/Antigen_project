delete all 
    fetch 2N53.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 127+128+156+158+159+185+188+189+191+192+193+194+195+196+197+198+199+200
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 138+157+172+171+120+92+123+97+100+228+128+118+101+158+154+165+137+135+130+114+94+117+133+113+131+232+175
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1TPX/1TPX_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit