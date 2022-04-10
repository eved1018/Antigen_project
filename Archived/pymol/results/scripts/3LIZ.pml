delete all 
    fetch 3LIZ.A


    set cartoon_transparency,0.75


    select ann2, resi 199+200+201+232+233+234+235+236+237+248+250+251+253+254+256+257+270+272
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 162+5+-4+-2+0+173+160+287+172+243+278+242+-6+51+-5+178+283+272+158+174+17+241+-3+161+144+110+240+157+114+177+164
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
    




    fetch 1YG9.A
    set cartoon_transparency,0.75


    select ann, resi 199+200+201+232+233+234+235+236+237+248+250+251+253+254+256+257+270+272
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 5+162+173+158+-2+-4+164+-5+160+17+157+-6+174+93+-3+243+-7+51+144+0+3+159+278+113+92+7+172+287+178+110+111
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
    




    align 3LIZ.A, 1YG9.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3LIZ_1YG9.png,width=900, height=900,dpi = 350,ray=1
    quit