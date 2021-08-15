delete all 
    fetch 4YDJ.G


    set cartoon_transparency,0.75


    select ann2, resi 96+97+275+280+281+282+283+365+366+367+368+369+371+372+373+384+419+420+421+423+455+469+472+473+474+480
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 423+369+490+422+327+107+223+370+44+72+45+379+87+220+63+61+419+84+46+421+73+51+222+371+420+69+53+389+112+106+380
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
    




    fetch 3TGT.A
    set cartoon_transparency,0.75


    select ann, resi 96+97+275+280+281+282+283+365+366+367+368+369+371+372+373+384+419+420+421+423+455+469+472+473+474+480
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 423+75+122+53+200+202+76+434+72+199+73+201+221+44+220+120+78+206+246+368+492+71+45+432+198+114+222+408+84+365+425+427
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
    




    align 4YDJ.G, 3TGT.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4YDJ_3TGT.png,width=900, height=900,dpi = 350,ray=1
    quit