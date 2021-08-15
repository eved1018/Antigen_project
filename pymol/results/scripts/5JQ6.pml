delete all 
    fetch 5JQ6.A


    set cartoon_transparency,0.75


    select ann2, resi 408+428+429+431+432+433+434+460+463+464+465+466+467+468+473+477+479+481+510+512+518
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 518+375+376+520+522+512+519+517+516+521+510+224+374+220+309+225+223+222+221+219+253+308+515+306+419+250+302+539+506+226+528+327
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
    




    fetch 1N67.A
    set cartoon_transparency,0.75


    select ann, resi 408+428+429+431+432+433+434+460+463+464+465+466+467+468+473+477+479+481+510+512+518
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 516+376+517+515+512+408+513+519+551+518+514+290+371+550+375+374+481+288+308+409+309+429+289+553+492+452+436+557+469+428+549+372
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
    




    align 5JQ6.A, 1N67.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5JQ6_1N67.png,width=900, height=900,dpi = 350,ray=1
    quit