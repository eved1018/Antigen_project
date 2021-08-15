delete all 
    fetch 6MXU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+133+134+135+136+153+155+156+157+189+193+194+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 413+409+412+423+427+420+406+402+494+367+395+401+431+500+485+403+360+421+417+408+391+400+404+456+428+244+416+424+374+497+435+501+361+405+363+334
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4O58/4O58_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit