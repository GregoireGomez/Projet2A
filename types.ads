package Types is
   LARGEUR_ECRAN : constant Integer := 66;
   HAUTEUR_ECRAN : constant Integer := 20;
   EPAISSEUR_BORDURE : constant Integer := 2;
   HAUTEUR_BORDURE : constant Integer := 1;
   
   type Tableau_Int is array (Integer range<>, Integer range<>) of Integer;
   type Tab_Ecran is array(1..LARGEUR_ECRAN, 1..HAUTEUR_ECRAN) of Character;
   
   type Position is record
      X : Natural;
      Y : Natural;
   end record;
   
   function "="(P1 , P2 : Position) return Boolean;
   function "+"(T1, T2 : Tab_Ecran) return Tab_Ecran;
   
end Types;
