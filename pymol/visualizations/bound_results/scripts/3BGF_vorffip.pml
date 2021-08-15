delete all 
    fetch 3BGF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 359+362+392+424+426+427+485+486+487+488+489+490+491+492+494
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 442+476+475+443+479+491+436+484+470+486+360+354+469+472+471+459+489+440+359+330+361+488+379+358+378+473+480
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3BGF/3BGF_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit