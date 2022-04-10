delete all 
    fetch 1EZV.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 123+124+126+127+130+131+132+133+134+142+143+144+147+148+149+150+151
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 83+55+39+81+33+60+75+65+86+79+37+71+35+80+77+32+66+42+164+70+57+59+84+87+36+67+78+63
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1EZV/1EZV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit