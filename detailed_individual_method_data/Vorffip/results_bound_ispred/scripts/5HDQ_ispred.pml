delete all 
    fetch 5HDQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 234+243+250+251+252+253+254+255+256+257+258+259+260+272
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 147+173+120+35+151+148+270+93+271+103+111+277+252+119+112+55+174+159+113+156+154+231+109+197+152+228+176+150+94+118
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5HDQ/5HDQ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit