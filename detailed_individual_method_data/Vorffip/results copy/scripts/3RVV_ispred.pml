delete all 
    fetch 3RVV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 14+16+18+19+21+156+157+158+159+181+182+186+199+202+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 199+216+217+162+210+157+195+122+209+193+164+200+106+142+123+196+208+155+213+161+124+121+66+158+194+166+30+103
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