delete all 
    fetch 2QRI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 62H+65H+68H+72H+73H+76H+79H+80H+146H+149H+150H+154H+155H+158H+159H+162H+163H
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 84H+138H+142H+23P+225H+226H+141H+15P+202H+1B+230H+223H+22P+28B+85H+99B+227H+122H+12P+16P+13P+229H+86H+256H+137H+255H+216H+21H+145H+224H+204H+262H
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3CVH/3CVH_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit