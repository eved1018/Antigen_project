delete all 
    fetch 2QRI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 62H+65H+68H+72H+73H+76H+79H+80H+146H+149H+150H+154H+155H+158H+159H+162H+163H
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 173H+248H+256H+122H+136H+141H+110H+170H+255H+84H+229H+105H+106H+137H+219H+251H+227H+86H+222H+225H+145H+115H+142H+195H+85H+88H+220H+172H+230H+226H+223H+176H
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3CVH/3CVH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit