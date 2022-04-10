delete all 
    fetch 4F2M.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 524+525+526+527+528+529+530+532+571+630+631+632
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 527+601+650+526+509+600+603+512+653+530+574+508+528+604+602+511+571+524+572+605+573+529+576+510+556+635
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4F2M/4F2M_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit