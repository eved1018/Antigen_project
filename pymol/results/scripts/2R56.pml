delete all 
    fetch 2R56.A


    set cartoon_transparency,0.75


    select ann2, resi 19+20+43+44+45+47+57+59+65+66+67+68+70+125+126+127+154+156+157+158+162
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 159+147+61+35+148+162+76+78+79+40+146+34+29+33+157+158+77+66+6+65+155+36+143+160+84+59
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
    




    fetch 6GF9.A
    set cartoon_transparency,0.75


    select ann, resi 19+20+43+44+45+47+57+59+65+66+67+68+70+125+126+127+154+156+157+158+162
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 77+35+146+78+8+148+147+76+79+29+145+162+144+28+40+141+150+2+71+155+75+114+113+6+4+149
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
    




    align 2R56.A, 6GF9.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2R56_6GF9.png,width=900, height=900,dpi = 350,ray=1
    quit