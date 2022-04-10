delete all 
    fetch 1BHQ.1
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 143+144+178+179+180+181+205+206+207+208+209+243+244+246+247+274+279
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 147+206+146+208+148+151+144+143+293+204+203+181+149+291+178+273+292+276+303+234+290+226+320+246+294+225
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3Q3G/3Q3G_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit