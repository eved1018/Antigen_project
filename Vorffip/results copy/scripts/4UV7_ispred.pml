delete all 
    fetch 4UV7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 353+355+356+357+358+359+360+361+362
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 410+357+502+503+609+485+359+253+545+518+407+244+510+584+356+483+297+517+406+612+501+495+508+610+411+243+305+358+461+521+306+409+575+522+595+513+507+519+292
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4UV7/4UV7_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit