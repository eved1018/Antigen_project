delete all 
    fetch 5EDK.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 317+322+323+324+358+360+366+367+368+369+371+376
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 122+31+22+476+13+131+24+33+293+376+12+395+21+129+132+96+9+324+54+18+408+28+478+11+15+90+375+294+392+406+10+292+98+34+130+295+404
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5E8E/5E8E_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit