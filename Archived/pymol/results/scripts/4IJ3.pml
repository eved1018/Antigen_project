delete all 
    fetch 4IJ3.A


    set cartoon_transparency,0.75


    select ann2, resi 69+70+71+72+76+114+115+116+117+118+119+120+122+132+133+134+135+137+139+149
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 252+253+258+255+254+69+72+71+250+257+74+262+118+251+265+104+111+35+75+68+115+117+116+107+78+261+140+70+142
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
    




    fetch 3Q6O.A
    set cartoon_transparency,0.75


    select ann, resi 69+70+71+72+76+114+115+116+117+118+119+120+122+132+133+134+135+137+139+149
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 253+252+254+69+258+233+251+255+262+74+250+78+265+75+117+245+243+118+232+70+111+71+157+72+261+235+234+257+160
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
    




    align 4IJ3.A, 3Q6O.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4IJ3_3Q6O.png,width=900, height=900,dpi = 350,ray=1
    quit