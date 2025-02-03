%Represent the following in prolog
killer('Butch').
married('Mia','Marsellus').
dead('Zed').
kills('Marsellus',Everyone):-givesMiaAFootMassage(Everyone).
loves('Mia',Everyone):-goodDancer(Everyone).
eats('Jules',Anything):-nutritius(Anything);tasty(Anything).

%Ahora voy a poner algunos hechos propios.
givesMiaAFootMassage('Stranger #1').
goodDancer('Sergio el bailador').
nutritius('Apples').
nutritius('Watermelons').
tasty('Pizza').
tasty('Ice cream').
tasty('Chicken nuggets').
