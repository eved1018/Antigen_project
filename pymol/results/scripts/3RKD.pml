delete all 
    fetch 3RKD.A


    set cartoon_transparency,0.75


    select ann2, resi 476+477+479+484+485+496+497+499+510+512+513+514+515+534+573+574+575+576+577+578
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 472+561+553+501+503+584+548+557+596+474+562+559+550+555+546+470+552+551+587+598+554+499+506+560+504
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
    




    fetch 2ZZQ.A
    set cartoon_transparency,0.75


    select ann, resi 476+477+479+484+485+496+497+499+510+512+513+514+515+534+573+574+575+576+577+578
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 122+132+133+131+472+561+128+562+235+127+130+224+531+124+237+596+126+552+125+548+123+553+584+536+489+529+240+532+563+485+119+121+120+503+311+484
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
    




    align 3RKD.A, 2ZZQ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3RKD_2ZZQ.png,width=900, height=900,dpi = 350,ray=1
    quit