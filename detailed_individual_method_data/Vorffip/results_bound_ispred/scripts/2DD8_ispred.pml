delete all 
    fetch 2DD8.S
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 359+363+365+390+391+392+395+426+436+482+484+485+486+487+488+489+491+492+494
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 487+480+442+484+443+436+482+488+491+432+486+485+390+426+470+392+433+505+503+489+504+395+475+378+365+472+479+376
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2DD8/2DD8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit