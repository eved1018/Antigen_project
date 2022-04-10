delete all 
    fetch 1E6J.P
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 187+204+205+206+207+208+209+210+212+213+216+217
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 83+87+84+145+90+144+91+89+85+93+92+82+86+88+181+146+184+95+143+94+121+122+112+139+147+152+18+98+13
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1E6J/1E6J_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit