delete all 
    fetch 4DGI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 138+140+141+142+143+144+145+146+147+208+212
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 129+130+148+128+151+138+162+166+186+136+189+140+152+144+200+145+155+126+188+154+190+185+221
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4DGI/4DGI_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit