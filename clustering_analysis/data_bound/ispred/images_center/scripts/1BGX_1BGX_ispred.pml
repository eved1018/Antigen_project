delete all 
    fetch 1BGX.T
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 313+314+315+352+382+383+385+386+388+392+397+398+399+400+460+464+467+471+475+481+482+483+484+485+486+506+507+511+512+515+516+532+535+536+539+541+542+543+544+545+546+547+548+565+568+569+570+578+580+583+728+732
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 28+162+214+221+83+91+85+90+218+254+251+253
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 510+505+513+506+512+311+770+558+766+400+589+588+586+784+587+743+557+813+556+653+336+652+685+650+651+686+655+318+508+509
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1BGX/1BGX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit