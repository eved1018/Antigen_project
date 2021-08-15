delete all 
    fetch 4K94.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 317+318+319+320+329+330+331+332+334+336+358+360+362+364+365+366+372+376+378+380+381
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 318+312+353+320+351+354+352+316+317+420+507+422+418+319+350+505+419+458+355+322+508+484+324+485+408+486+371+456
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4K94/4K94_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit