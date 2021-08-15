delete all 
    fetch 4LIQ.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 314+315+316+317+318+319+320+367+369+370+372+373+375+401+402+439+493
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 260+473+409+208+206+247+447+262+414+411+407+471+205+249+248+250+289+408+496+448+245+390+410+257+252+181+209+449+176+132+180+450+405+60+231+244
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4LIQ/4LIQ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit