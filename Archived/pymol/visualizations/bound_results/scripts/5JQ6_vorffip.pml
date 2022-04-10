delete all 
    fetch 5JQ6.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 408+428+429+431+432+433+434+460+463+464+465+466+467+468+473+477+479+481+510+512+518
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 518+375+376+520+522+512+519+517+516+521+510+224+374+220+309+225+223+222+221+219+253+308+515+306+419+250+302+539+506+226+528+327
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