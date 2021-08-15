delete all 
    fetch 2ZCH.P
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 91+92+93+94+98+101+125+175+178+179+233+234+235+236+237+239
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 187+93+193+92+137+110+98+186+99+94+97+109+144+90+95+192+218+215+129+217+87+216+188+125+128+222+150+148
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2ZCH/2ZCH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit