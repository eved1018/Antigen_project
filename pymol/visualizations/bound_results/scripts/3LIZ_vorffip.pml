delete all 
    fetch 3LIZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 199+200+201+232+233+234+235+236+237+248+250+251+253+254+256+257+270+272
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 162+5+-4+-2+0+173+160+287+172+243+278+242+-6+51+-5+178+283+272+158+174+17+241+-3+161+144+110+240+157+114+177+164
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3LIZ/3LIZ_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit