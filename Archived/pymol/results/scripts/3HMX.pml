delete all 
    fetch 3HMX.A


    set cartoon_transparency,0.75


    select ann2, resi 15+17+18+20+23+40+42+43+45+47+54+55+56+58+59+61+62+66
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 292+246+180+291+247+293+243+276+279+277+181+179+278+267+228+2+177+226+223+178+25+225+23+1+229+305+245+114+255+242+268+54
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
    




    fetch 1F42.A
    set cartoon_transparency,0.75


    select ann, resi 15+17+18+20+23+40+42+43+45+47+54+55+56+58+59+61+62+66
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 292+246+294+293+267+291+181+277+179+228+268+1+229+2+180+261+266+243+259+208+200+260+177+17+25+16+247+23+227+255+90+245
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
    




    align 3HMX.A, 1F42.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3HMX_1F42.png,width=900, height=900,dpi = 350,ray=1
    quit