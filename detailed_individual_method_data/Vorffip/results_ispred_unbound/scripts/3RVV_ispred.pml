delete all 
    fetch 3D6S.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 14+16+18+19+21+156+157+158+159+181+182+186+199+202+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 209+217+186+199+195+193+162+210+216+157+200+213+21+196+164+30+194+66+161+18+155+222+158+169+122+208+98+170
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3RVV/3RVV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit