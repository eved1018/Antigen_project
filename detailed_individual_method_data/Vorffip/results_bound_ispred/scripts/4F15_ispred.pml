delete all 
    fetch 4F15.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 112+113+114+115+118+120+121+163+164+166+253
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 217+218+141+140+94+93+139+80+385+216+386+384+383+382+96+243+142+198+263+81+215+200+219+166+98+78+45+264+387
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4F15/4F15_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit