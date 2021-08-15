delete all 
    fetch 2WRC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 130+132+133+134+135+136+139+142+143+144+152+154+155+157+188+189+192+193
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 413+431+405+402+423+404+374+24+23+401+406+461+409+470+471+331+371+211+460+434+412+216+15+417+469+210+408+197+332+420+208+399+432+330+472+285
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4HF5/4HF5_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit