delete all 
    fetch 4HWB.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 202+203+226+229+230+232+233+235+248+250+251+252+253+289+290+291+292+293+294+295+296
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 233+232+209+278+202+302+288+234+293+309+284+213+220+300+308+286+301+201+271+287+305+204+304+224+216
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4HWB/4HWB_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit