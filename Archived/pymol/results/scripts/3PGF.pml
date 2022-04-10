delete all 
    fetch 3PGF.A


    set cartoon_transparency,0.75


    select ann2, resi 87+90+91+92+93+95+98+110+259+301+302+305+308+309+321+324+325+327+328+329+330+331+332
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 92+91+329+331+110+90+321+95+324+98+328+93+325+175+332+330+305+333+341+176+42+301+101+327+211+259+182+344+318+66+337+345
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
    




    fetch 5EDU.B
    set cartoon_transparency,0.75


    select ann, resi 195+198+199+200+201+203+206+218+367+409+410+413+416+417+429+432+433+435+436+437+438+439+440
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 437+560+829+680+830+678+496+749+505+200+203+835+682+497+279+676+495+429+557+832+568+508+499+433+498+708+709+679+697+561+198+509+677+567+748+319+556+504
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
    




    align 3PGF.A, 5EDU.B





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3PGF_5EDU.png,width=900, height=900,dpi = 350,ray=1
    quit