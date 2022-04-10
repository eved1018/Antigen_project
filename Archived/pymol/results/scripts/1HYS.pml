delete all 
    fetch 1HYS.B


    set cartoon_transparency,0.75


    select ann2, resi 199+222+223+224+225+226+227+229+230
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 230+228+227+229+226+318+231+4+3+224+266+422+317+315+269+223+232+117+213+425+225+357+265+6+88+316+212+347+159+314+271+348+312+346+272
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 3LAN.A
    set cartoon_transparency,0.75


    select ann, resi 199+222+223+224+225+226+227+229+230
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 381+229+230+406+184+183+91+188+407+181+92+402+72+63+182+89+186+74+94+228+90+408+88+78+24+151+535+380+93+500+403+409+410+61+95+73+266+258
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 1HYS.B, 3LAN.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1HYS_3LAN.png,width=900, height=900,dpi = 350,ray=1
    quit