delete all 
    fetch 4LEO.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 72+93+96+99+101+102+104+106+129+132+145+153+154+155+156+158+159+162
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 253+357+321+125+101+244+355+249+251+461+320+118+102+72+91+124+203+60+81+354+415+94+200+163+95+204+466+205+516+114+414+356+62+48+252+460+472+18+255
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4LEO/4LEO_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit