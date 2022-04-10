delete all 
    fetch 3WKM.A


    set cartoon_transparency,0.75


    select ann2, resi 116+117+161+162+165+195+198+200+207+215+216+242+246+250+276+277+278+279+280+281+282+283+288+289
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 243+119+289+246+117+279+280+288+116+118+161+291+166+169+207+120+242+277+186+290+122+200+205+278+283+187+165
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
    




    fetch 3WKL.A
    set cartoon_transparency,0.75


    select ann, resi 116+117+161+162+165+195+198+200+207+215+216+242+246+250+276+277+278+279+280+281+282+283+288+289
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 289+243+187+288+205+246+242+148+128+186+166+207+204+287+215+120+131+184+266+267+268+213+279+157+282+165+250
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
    




    align 3WKM.A, 3WKL.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3WKM_3WKL.png,width=900, height=900,dpi = 350,ray=1
    quit