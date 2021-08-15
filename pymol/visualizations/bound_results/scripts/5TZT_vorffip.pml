delete all 
    fetch 5TZT.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 3+27+35+37+101+102+103+104
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 14+114+88+115+116+91+15+13+110+12+11+111+89+16+93+84+9+90+5+24+6+20+43+75+61
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5TZT/5TZT_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit