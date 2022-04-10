delete all 
    fetch 3BGF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 359+362+392+424+426+427+485+486+487+488+489+490+491+492+494
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 436+442+443+470+487+484+475+479+458+444+456+486+472+491+502+432+433+476+428+482+426+437+415+427+489+455+473
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3BGF/3BGF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit