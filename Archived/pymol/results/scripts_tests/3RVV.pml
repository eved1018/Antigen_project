delete all 
    fetch 3RVV.A


    set cartoon_transparency,0.5


    select ann2, resi 14+16+18+19+21+156+157+158+159+181+182+186+199+202+204 +33
    indicate bycalpha ann2
    create trip, indicate


    select pred, resi 217+28+193+33+30+152+31+73+149+29+170+142+74+121+216+148+167+165+153+32+72+99+223+150+222+169+5+166
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, trip
    color black, trip
    set sphere_transparency, 1,trip


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 3D6S.A
    set cartoon_transparency,0.75


    select ann, resi 14+16+18+19+21+156+157+158+159+181+182+186+199+202+204
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 217+193+30+170+31+33+216+73+152+196+121+166+28+167+142+52+51+153+149+119+74+99+222+169+32+122+116+75
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color grey, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 3RVV.A,3D6S.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images_tests/3RVV_3D6S.png,width=900, height=900,dpi = 350,ray=1
    quit