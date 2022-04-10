delete all 
    fetch 4XMP.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+102+103+105+106+109+124+198+276+278+279+280+281+282+283+365+366+367+368+371+426+427+428+429+430+431+455+456+457+458+459+460+465+466+467+469+474+476+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 280+458+281+459+278+282+122+300+430+325+221+75+223+379+60+73+368+72+71+61+202+366+80+201+199+352+200+425+457+326+434+198
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4XMP/4XMP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit