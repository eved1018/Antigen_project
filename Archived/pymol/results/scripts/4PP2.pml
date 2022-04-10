delete all 
    fetch 4PP2.F


    set cartoon_transparency,0.75


    select ann2, resi 12+13+15+17+18+20+155+156+157+178+179+180+181+182+184+185+187+198+199+203
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 216+169+32+29+141+120+215+30+27+50+212+28+72+118+192+151+99+75+98+167+51+49+152+193+168+31+195+165
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


    select ann, resi 12+13+15+17+18+20+155+156+157+178+179+180+181+182+184+185+187+198+199+203
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
    




    align 4PP2.F, 3F5V.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4PP2_3F5V.png,width=900, height=900,dpi = 350,ray=1
    quit