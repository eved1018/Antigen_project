delete all 
    fetch 3LAN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 199+222+223+224+225+226+227+229+230
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 94+92+93+91+88+61+53+468+409+138+408+406+211+140+139+212+374+410+86+380+407+95+90+71+532+381+89+377+137+291+404+529+403+292+141+136+52+25
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1HYS/1HYS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit