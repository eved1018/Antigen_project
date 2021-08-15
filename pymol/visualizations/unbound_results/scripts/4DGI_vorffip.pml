delete all 
    fetch 1QLX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 138+140+141+142+143+144+145+146+147+208+212
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 225+149+223+129+226+218+145+168+162+155+153+152+228+221+220+136+146+167+130+227+126+144+127+170
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