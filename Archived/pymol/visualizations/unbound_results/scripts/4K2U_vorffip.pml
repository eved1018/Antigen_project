delete all 
    fetch 1ZRL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 149+152+153+156+160+161+162+167+168+169
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 227+231+228+366+230+223+34+224+365+234+422+364+452+441+433+220+336+13+134+436+440+448+552+434+55+554+435+338+451+30+415+135+15+363+444+27+437+413
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4K2U/4K2U_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit