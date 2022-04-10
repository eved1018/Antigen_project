delete all 
    fetch 2DD8.S
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 359+363+365+390+391+392+395+426+436+482+484+485+486+487+488+489+491+492+494
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 443+442+491+476+479+475+503+470+359+458+360+505+469+361+466+487+377+471+489+378+404+358+484+473+468+472+440+504
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2DD8/2DD8_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit