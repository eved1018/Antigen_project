delete all 
    fetch 3KS0.A


    set cartoon_transparency,0.75


    select ann2, resi 30+63+64+65+66+67+68+69+70+72
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 70+64+49+65+66+97+74+95+73+61+52+96+60+62+63+68+45+53+67+48+44+69+43
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
    




    fetch 1LDC.A
    set cartoon_transparency,0.75


    select ann, resi 30+63+64+65+66+67+68+69+70+72
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 500+170+496+503+495+491+123+165+487+506+499+121+492+501+464+130+497+162+171+380+508+460+486+505+494+488+502+510+498+489+490+159+504+509+511+507
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
    




    align 3KS0.A, 1LDC.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3KS0_1LDC.png,width=900, height=900,dpi = 350,ray=1
    quit