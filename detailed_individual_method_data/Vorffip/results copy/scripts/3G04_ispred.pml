delete all 
    fetch 3G04.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 38+56+58+80+82+105+107+109+110+129+130+151+152+153+155+157+183+185+208+209+235+255+256
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 239+255+240+152+253+206+155+135+88+127+87+241+153+237+113+110+139+235+63+112+252+254+203+104+115+65+107+60
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3G04/3G04_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit