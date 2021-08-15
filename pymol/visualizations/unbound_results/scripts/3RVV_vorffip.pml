delete all 
    fetch 3D6S.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 14+16+18+19+21+156+157+158+159+181+182+186+199+202+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 217+193+30+170+31+33+216+73+152+196+121+166+28+167+142+52+51+153+149+119+74+99+222+169+32+122+116+75
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3RVV/3RVV_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit