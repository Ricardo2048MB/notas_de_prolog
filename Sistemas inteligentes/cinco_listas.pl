empresa(jefe,[analista,programador,desarrollador,project_manager,conserje,secretaria,supervisor]).
animales(perro,[gato,tortuga,pez,caballo,borrego,vaca,cerdo]).
libros(rebelion_en_la_granja,[la_llamada_de_cthulu,frankenstein,dracula,azteca,robinson_crusoe,la_isla_del_tesoro,un_mundo_feliz]).
nombresR(ricardo,[roberto,roman,raul,romualdo,reveriano,renato,rene]).
critaturas_prehistoricas(velociraptor,[tiranosaurio,estegosaurio,anquilosaurio,pterodactilo,ictiosaurio,braquiosaurio,plesiosaurio]).

godin(X,Y):-empresa(X,Y).
noHumano(X,Y):-animales(X,Y).
buenContenido(X,Y):-libros(X,Y).
personas(X,Y):-nombresR(X,Y).
extintos(X,Y):-critaturas_prehistoricas(X,Y).