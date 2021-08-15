delete all 
    fetch 4O58.A


    set cartoon_transparency,0.75


    select ann2, resi 98+131+133+134+135+136+137+145+153+155+156+157+158+189+193+194+226
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 316+317+321+28+294+320+16+319+293+30+15+29+301+300+17+299+310+307+18+14+269+42+224+13+308+323+318+12+19+9+62+94
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
    




    fetch 6MXU.A
    set cartoon_transparency,0.75


    select ann, resi 98+131+133+134+135+136+153+155+156+157+189+193+194+226
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 423+431+224+424+409+94+420+405+427+225+222+421+223+406+29+96+428+412+403+416+137+413+500+401+419+30+417+221+453+104+410+402+400+226+63+95
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
    




    align 4O58.A, 6MXU.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4O58_6MXU.png,width=900, height=900,dpi = 350,ray=1
    quit