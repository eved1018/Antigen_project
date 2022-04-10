delete all 
    fetch 1N67.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 408+428+429+431+432+433+434+460+463+464+465+466+467+468+473+477+479+481+510+512+518
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 516+376+517+515+512+408+513+519+551+518+514+290+371+550+375+374+481+288+308+409+309+429+289+553+492+452+436+557+469+428+549+372
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5JQ6/5JQ6_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit