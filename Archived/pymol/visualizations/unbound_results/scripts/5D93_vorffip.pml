delete all 
    fetch 3T59.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+37+38+71+72+74+75+77+78+81+82+84+85+142+143+144+145+146+148
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 256+255+261+545+296+264+260+486+293+265+490+347+547+546+253+292+348+258+548+295+482+523+147+151+544+469+290+522+257+349+525+519+352+254+303+485
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5D93/5D93_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit