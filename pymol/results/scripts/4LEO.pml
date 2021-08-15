delete all 
    fetch 4LEO.C


    set cartoon_transparency,0.75


    select ann2, resi 72+93+96+99+101+102+104+106+129+132+145+153+154+155+156+158+159+162
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 355+322+354+516+406+517+415+544+346+407+353+60+417+347+284+41+31+513+191+101+504+441+35+352+356+503+543+320+59+11+36+102+467+541+471+151+518+502+249
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
    




    fetch 1M6B.A
    set cartoon_transparency,0.75


    select ann, resi 72+93+96+99+101+102+104+106+129+132+145+153+154+155+156+158+159+162
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 354+571+47+561+355+570+253+60+248+516+11+284+560+48+72+567+57+575+347+251+405+504+415+406+346+562+322+252+45+92+353+568+356+472+56+36+101+417
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
    




    align 4LEO.C, 1M6B.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4LEO_1M6B.png,width=900, height=900,dpi = 350,ray=1
    quit