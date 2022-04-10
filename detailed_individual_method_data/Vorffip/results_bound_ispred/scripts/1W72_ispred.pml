delete all 
    fetch 1W72.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 65+66+68+69+72+73+75+76+79+80+84+89+145+146+155
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 105+115+122+138+229+15+80+92+86+163+192+155+227+27+146+35+10+236+232+85+142+73+267+177+237+195+248+251+250+238+234
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1W72/1W72_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit