delete all 
    fetch 4JZJ.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 48+49+51+56+57+58+59+60+61+62+82+84+85+86+87+89+90+91
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 281+280+278+277+276+290+274+215+198+197+279+233+221+287+254+251+222+234+230+236+214+289+267+200+203+224+250+255+248+249
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4JZJ/4JZJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit