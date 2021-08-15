delete all 
    fetch 5F9O.G


    set cartoon_transparency,0.75


    select ann2, resi 96+275+276+277+278+279+280+281+282+365+366+367+368+371+429+455+457+458+459+471+472+480
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 53+75+202+423+126+434+200+73+76+432+122+201+72+44+221+246+327+394+490+71+407+222+491+125+120+396+408+406+78+84+427+123
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


    select ann, resi 96+275+276+277+278+279+280+281+282+365+366+367+368+371+429+455+457+458+459+471+472+480
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
    




    align 5F9O.G, 3TGT.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5F9O_3TGT.png,width=900, height=900,dpi = 350,ray=1
    quit