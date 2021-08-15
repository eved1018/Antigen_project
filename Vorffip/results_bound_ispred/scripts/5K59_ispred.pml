delete all 
    fetch 5K59.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 71+73+74+206+207+208+210+211+262+264+267
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 265+266+264+268+277+267+299+263+204+125+139+143+276+127+116+304+274+126+220+278+305+210+207+216+131+138+252+269+118+302+128
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5K59/5K59_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit