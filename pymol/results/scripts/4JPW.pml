delete all 
    fetch 4JPW.G


    set cartoon_transparency,0.75


    select ann2, resi 122+124+278+279+280+281+282+365+366+367+368+370+371+425+427+429+431+432+455+456+457+458+459+460+462+469+473+474+476+480
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 200+202+432+122+434+423+199+422+53+201+75+491+72+222+408+406+427+120+198+73+44+394+411+327+421+425+360+74+76+393+492+45+82
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
    




    fetch 4DVV.A
    set cartoon_transparency,0.75


    select ann, resi 122+124+278+279+280+281+282+365+366+367+368+370+371+425+427+429+431+432+455+456+457+458+459+460+462+469+473+474+476+480
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 423+120+434+200+122+75+202+53+76+72+201+73+44+492+425+45+246+221+71+199+119+84+369+327+368+370+220+87+198+203+82+365
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
    




    align 4JPW.G, 4DVV.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4JPW_4DVV.png,width=900, height=900,dpi = 350,ray=1
    quit