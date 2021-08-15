delete all 
    fetch 1LDC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 30+63+64+65+66+67+68+69+70+72
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 500+170+496+503+495+491+123+165+487+506+499+121+492+501+464+130+497+162+171+380+508+460+486+505+494+488+502+510+498+489+490+159+504+509+511+507
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3KS0/3KS0_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit