delete all 
    fetch 3HI1.J
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 109+112+210+255+257+365+366+367+368+370+371+375+376+382+384+421+424+426+429+473+474+475+476
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 206+438+429+119+205+458+432+457+461+442+428+460+437+202+121+124+280+120+459+427+204+123+203+122+436+199+300+431+201+434+198+200
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3HI1/3HI1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit