delete all 
    fetch 1W8K.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 427+428+431+432+433+434+435+436+437+450+451+452
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 219+218+108+105+106+203+170+461+209+385+415+132+151+133+384+208+222+460+131+45+434+382+196+216+109+104+178+217+53+87+202+197+134
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2J4W/2J4W_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit