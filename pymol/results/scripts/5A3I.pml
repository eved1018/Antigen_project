delete all 
    fetch 5A3I.A


    set cartoon_transparency,0.75


    select ann2, resi 71+72+113+114+115+116+118+120+121+137+145+162+163+164+165+252
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 314+315+20+318+7+313+8+5+6+291+317+311+18+19+28+320+316+2+4+304+290+212+306+-1+21+3+1+0+22+30+9+17
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
    




    fetch 6PCX.A
    set cartoon_transparency,0.75


    select ann, resi 81+82+123+124+125+126+128+130+131+147+155+172+173+174+175+262
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 954+942+946+80+961+960+968+958+950+943+947+81+949+953+936+314+957+939+30+940+222+63+941+944+972+61+78+964+148+29+123+106+963+990+82+993
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
    




    align 5A3I.A, 6PCX.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5A3I_6PCX.png,width=900, height=900,dpi = 350,ray=1
    quit