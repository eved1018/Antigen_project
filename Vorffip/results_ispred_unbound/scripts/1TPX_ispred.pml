delete all 
    fetch 2N53.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 127+128+156+158+159+185+188+189+191+192+193+194+195+196+197+198+199+200
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 171+130+132+135+127+170+129+169+224+126+136+138+98+123+122+99+172+139+228+128+134+102+124+125+96+101+97
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1TPX/1TPX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit