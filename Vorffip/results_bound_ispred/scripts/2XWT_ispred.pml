delete all 
    fetch 2XWT.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+38+42+55+58+60+61+80+82+84+85+104+105+107+109+110+129+130+134+151+152+153+155+157+181+183+203
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 112+206+239+130+152+153+87+253+155+237+88+63+60+255+235+119+49+129+252+115+58+148+240+38+151+85+254+127+74
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2XWT/2XWT_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit