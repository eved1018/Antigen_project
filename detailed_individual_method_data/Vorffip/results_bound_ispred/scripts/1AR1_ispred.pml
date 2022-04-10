delete all 
    fetch 1AR1.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 26+29+30+166+167+168+205+207+208+209+235+236+237+240
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+73+226+71+39+14+61+65+20+155+56+97+16+15+100+74+18+17+36+70+67+221+58+222+223+72+13+42+196+19
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1AR1/1AR1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit