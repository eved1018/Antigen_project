delete all 
    fetch 2WRC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 130+132+133+134+135+136+139+142+143+144+152+154+155+157+188+189+192+193
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 197+208+210+211+216+285+399+401+402+404+405+406+408+409+412+413+417+420+423
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+23+24+330+331+332+371+374+431+432+434+460+461+469+470+471+472
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4HF5/4HF5_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit