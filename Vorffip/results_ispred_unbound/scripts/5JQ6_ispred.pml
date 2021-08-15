delete all 
    fetch 1N67.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 408+428+429+431+432+433+434+460+463+464+465+466+467+468+473+477+479+481+510+512+518
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 429+473+419+549+467+301+428+311+550+469+515+530+466+468+310+432+470+359+300+546+516+528+475+533+517+312+551+500+430+532+420+479
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5JQ6/5JQ6_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit