delete all 
    fetch 6MXU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+134+135+136+153+155+156+157+159+189+190+193+194+196+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 423+431+224+424+409+94+420+405+427+225+222+421+223+406+29+96+428+412+403+416+137+413+500+401+419+30+417+221+453+104+410+402+400+226+63+95
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4GMS/4GMS_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit