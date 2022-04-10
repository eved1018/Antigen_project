delete all 
    fetch 3BTA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 901+916+917+918+919+920+952+953+954+955+1055+1056+1057+1058+1059+1060+1061+1062+1063+1064+1288+1291+1293
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['641+546+643+683+768+688+650+764+644+685+682+829+642+760+757+648+689+647+769+766+603+771+649+827+765+690+684+547+767+687+645+763+646+686+761+750+828+770+762+758+759+825']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/2NYY/2NYY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit