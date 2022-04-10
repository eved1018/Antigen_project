delete all 
    fetch 5TZU.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 29+31+32+34+35+36+37+39+46+51+53+54+97+99+100+101+102+103+104
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 113+14+114+16+115+13+5+88+3+89+24+85+84+108+53+56+26+101+1+15+11+54+51+6
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5TZU/5TZU_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit