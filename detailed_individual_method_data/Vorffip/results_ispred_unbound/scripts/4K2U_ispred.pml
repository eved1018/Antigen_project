delete all 
    fetch 1ZRL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 149+152+153+156+160+161+162+167+168+169
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 554+527+451+444+436+301+530+526+163+452+520+440+245+131+524+454+439+139+55+31+10+53+30+112+521+257+9+171+259+435+56+168+448+441+197+302+13+132
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4K2U/4K2U_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit