delete all 
    fetch 5CBA.E


    set cartoon_transparency,0.75


    select ann2, resi 18+21+22+24+25+26+27+28+46+48+59+62+63+66
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 27+29+64+28+63+18+62+21+26+67+22+31+30+44+17+25+23+68+59+65
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
    




    fetch 7JNY.A
    set cartoon_transparency,0.75


    select ann, resi 20+23+24+26+27+28+29+30+48+50+61+64+65+68
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 5+8+10+9+6+60+36+7+2+20+72+63+64+74+11+23+28+3+76+24+40+39
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
    




    align 5CBA.E, 7JNY.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5CBA_7JNY.png,width=900, height=900,dpi = 350,ray=1
    quit