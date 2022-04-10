delete all 
    fetch 4RWY.A


    set cartoon_transparency,0.75


    select ann2, resi 96+97+98+102+122+276+278+279+280+281+282+283+366+367+368+371+425+426+427+429+430+431+432+455+456+457+459+460+461+472+473+474+476+480
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 442+444+62+61+430+44+476+423+204+440+413+394+441+293+114+334+332+203+300+200+297+78+246+368+51+422+59+417+290+446+439+45+60
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
    




    fetch 3TGQ.A
    set cartoon_transparency,0.75


    select ann, resi 96+97+98+102+122+276+278+279+280+281+282+283+366+367+368+371+425+426+427+429+430+431+432+455+456+457+459+472+473+474+476+480
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 423+434+120+200+440+122+427+72+202+207+327+430+432+326+422+199+492+421+201+198+53+75+442+444+209+61+370+121+473+63+368+463
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
    




    align 4RWY.A, 3TGQ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4RWY_3TGQ.png,width=900, height=900,dpi = 350,ray=1
    quit