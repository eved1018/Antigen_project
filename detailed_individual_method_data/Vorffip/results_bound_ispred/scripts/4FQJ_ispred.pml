delete all 
    fetch 4FQJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 37+38+39+40+41+52+58+59+60+61+62+85+86+90+282+283+284+285+287
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 321+306+238+309+320+37+230+231+39+71+34+322+40+58+220+73+101+232+177+38+33+87+43+237+311+45+209+278+227+123+289
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4FQJ/4FQJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit