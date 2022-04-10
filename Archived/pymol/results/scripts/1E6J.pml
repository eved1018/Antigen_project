delete all 
    fetch 1E6J.P


    set cartoon_transparency,0.75


    select ann2, resi 187+204+205+206+207+208+209+210+212+213+216+217
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 83+87+84+145+90+144+91+89+85+93+92+82+86+88+181+146+184+95+143+94+121+122+112+139+147+152+18+98+13
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
    




    fetch 6SMU.A
    set cartoon_transparency,0.75


    select ann, resi 187+204+205+206+207+208+209+210+212+213+216+217
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 184+181+32+119+96+144+91+4+10+95+93+87+9+151+185+97+8+92+11+145+90+5+88+118+12+89+2+84+112+18
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
    




    align 1E6J.P, 6SMU.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1E6J_6SMU.png,width=900, height=900,dpi = 350,ray=1
    quit