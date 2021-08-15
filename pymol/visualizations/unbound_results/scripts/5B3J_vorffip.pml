delete all 
    fetch 3JPY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+33+34+55+56+57+58+59+60+61+65+66+67+92
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 390+389+166+252+387+391+165+175+164+388+253+251+393+204+392+162+110+179+330+254+327+61+311+331+177+255+206+114+194+167+195+163
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5B3J/5B3J_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit