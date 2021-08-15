delete all 
    fetch 4IJ3.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 69+70+71+72+76+114+115+116+117+118+119+120+122+132+133+134+135+137+139+149
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 252+253+258+255+254+69+72+71+250+257+74+262+118+251+265+104+111+35+75+68+115+117+116+107+78+261+140+70+142
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4IJ3/4IJ3_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit