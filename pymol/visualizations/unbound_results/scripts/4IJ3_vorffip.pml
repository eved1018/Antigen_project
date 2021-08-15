delete all 
    fetch 3Q6O.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 69+70+71+72+76+114+115+116+117+118+119+120+122+132+133+134+135+137+139+149
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 253+252+254+69+258+233+251+255+262+74+250+78+265+75+117+245+243+118+232+70+111+71+157+72+261+235+234+257+160
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