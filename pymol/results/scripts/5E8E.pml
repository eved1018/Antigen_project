delete all 
    fetch 5E8E.H


    set cartoon_transparency,0.75


    select ann2, resi 339+344+345+346+380+382+388+389+390+391+393+398
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 457+436+331+438+538+334+333+455+437+439+484+433+522+330+328+532+329+539+344+370+548+521+363+537+499+549+398+369+391+534
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
    




    fetch 5EDK.A
    set cartoon_transparency,0.75


    select ann, resi 317+322+323+324+358+360+366+367+368+369+371+376
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 24+369+41+28+27+347+23+345+15+40+13+30+372+11+371+22+10+368+34+21+295+38+9+390+17+392+373+296+18+446+393+348+530+307+412+31+298
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
    




    align 5E8E.H, 5EDK.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5E8E_5EDK.png,width=900, height=900,dpi = 350,ray=1
    quit