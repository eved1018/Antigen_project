delete all 
    fetch 4OGX.A


    set cartoon_transparency,0.75


    select ann2, resi 412+416+418+419+434+435+437+438+439+475+477+478+479+480+483+527+528+554+555+572+573+574+575+578+597+598+599+600+601+602+604+609
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 575+599+597+434+578+598+399+573+498+497+555+585+416+600+426+441+418+590+478+439+413+440+401+503+400+589+495+480+528
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
    




    fetch 2ANY.A
    set cartoon_transparency,0.75


    select ann, resi 37+39+41+42+57+58+60+94+96+97+98+99+102+146+147+174+189+190+191+192+195+214+215+216+217+219+220+222+226
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 117+24+116+204+114+202+132+208B+39+60+61+175+49+203+37+41+79+205+96+122+159+174+216+215+190+42+97+58+36
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
    




    align 4OGX.A, 2ANY.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4OGX_2ANY.png,width=900, height=900,dpi = 350,ray=1
    quit