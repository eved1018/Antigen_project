delete all 
    fetch 4PP1.B


    set cartoon_transparency,0.75


    select ann2, resi 47+51+53+54+55+84+85+86+87+90+93+107+108+109+110+111+112+113+114+221+222
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 216+169+30+29+120+192+215+212+72+141+32+73+147+118+31+27+165+195+170+71+98+151+99+68+69+121+122+1
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
    




    fetch 3F5V.A
    set cartoon_transparency,0.75


    select ann, resi 47+51+53+54+55+84+85+86+87+90+93+107+108+109+110+111+112+113+114+221+222
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 216+72+30+170+32+141+169+29+165+212+27+151+152+120+215+99+73+118+50+195+166+148+168+98+161+78+69+193
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
    




    align 4PP1.B, 3F5V.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4PP1_3F5V.png,width=900, height=900,dpi = 350,ray=1
    quit