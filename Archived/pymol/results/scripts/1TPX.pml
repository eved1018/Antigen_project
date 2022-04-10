delete all 
    fetch 1TPX.A


    set cartoon_transparency,0.75


    select ann2, resi 127+128+156+158+159+185+188+189+191+192+193+194+195+196+197+198+199+200
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 155+151+158+132+133+128+157+148+154+152+131+147+215+139+167+159+143+156+175+221+170+173+127
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
    




    fetch 2N53.A
    set cartoon_transparency,0.75


    select ann, resi 127+128+156+158+159+185+188+189+191+192+193+194+195+196+197+198+199+200
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 138+157+172+171+120+92+123+97+100+228+128+118+101+158+154+165+137+135+130+114+94+117+133+113+131+232+175
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
    




    align 1TPX.A, 2N53.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1TPX_2N53.png,width=900, height=900,dpi = 350,ray=1
    quit