delete all 
    fetch 3LAN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 199+222+223+224+225+226+227+229+230
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 381+229+230+406+184+183+91+188+407+181+92+402+72+63+182+89+186+74+94+228+90+408+88+78+24+151+535+380+93+500+403+409+410+61+95+73+266+258
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1HYS/1HYS_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit