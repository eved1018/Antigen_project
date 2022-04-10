delete all 
    fetch 4OGX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 412+416+418+419+434+435+437+438+439+475+477+478+479+480+483+527+528+554+555+572+573+574+575+578+597+598+599+600+601+602+604+609
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 575+599+597+434+578+598+399+573+498+497+555+585+416+600+426+441+418+590+478+439+413+440+401+503+400+589+495+480+528
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4OGX/4OGX_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit