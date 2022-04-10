delete all 
    fetch 5X58.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 359+362+392+424+426+427+485+486+487+488+489+490+491+492+494
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 442+330+443+873+874+502+660+646+877+154+876+777+679+160+369+164+408+1055+1060+547+159+416+428+1064+417+377+124+1061+347+316+503+404+1080+458+836+367+356+155+365+470+778+354+462+546+942+326
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