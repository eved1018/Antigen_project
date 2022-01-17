delete all 
    fetch 2WRC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 130+132+133+134+135+136+139+142+143+144+152+154+155+157+188+189+192+193
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 413+406+412+216+404+405+401+399+210+402+417+211+208+197+408+420+409+285
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+470+471+472+461+460+374+371+432+431+434+423+23+331+330+332+469+24
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4HF5/4HF5_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit