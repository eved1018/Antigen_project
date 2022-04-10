delete all 
    fetch 4LSU.G


    set cartoon_transparency,0.75


    select ann2, resi 97+122+123+124+257+278+279+280+281+282+365+366+367+368+370+371+425+426+427+430+431+432+455+456+457+458+459+460+461+465+466+467+469+471+474
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 202+201+434+200+423+122+120+199+75+408+84+44+72+121+427+492+491+53+76+198+432+123+221+407+246+82+45+411+222+406+73+405+440
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


    select ann, resi 97+122+123+124+257+278+279+280+281+282+365+366+367+368+370+371+425+426+427+430+431+432+455+456+457+458+459+460+461+465+466+467+469+471+474
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
    




    align 4LSU.G, 3TGT.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4LSU_3TGT.png,width=900, height=900,dpi = 350,ray=1
    quit