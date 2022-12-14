PGDMP         ;            
    z            tpower_qap1    14.5    14.5 '    1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            4           1262    33171    tpower_qap1    DATABASE     V   CREATE DATABASE tpower_qap1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE tpower_qap1;
                postgres    false                        2615    33172 	   tp_qap1db    SCHEMA        CREATE SCHEMA tp_qap1db;
    DROP SCHEMA tp_qap1db;
                postgres    false            ?            1259    33173    aircraft    TABLE     ?   CREATE TABLE tp_qap1db.aircraft (
    id bigint NOT NULL,
    aircraft_type text NOT NULL,
    "airlineName" text NOT NULL,
    "numPassengers" bigint NOT NULL
);
    DROP TABLE tp_qap1db.aircraft;
    	   tp_qap1db         heap    postgres    false    6            ?            1259    33178    aircraft_airports    TABLE     n   CREATE TABLE tp_qap1db.aircraft_airports (
    aircraft_id bigint NOT NULL,
    airport_id bigint NOT NULL
);
 (   DROP TABLE tp_qap1db.aircraft_airports;
    	   tp_qap1db         heap    postgres    false    6            ?            1259    33181    aircraft_passengers    TABLE     s   CREATE TABLE tp_qap1db.aircraft_passengers (
    aircraft_id bigint NOT NULL,
    passengers_id bigint NOT NULL
);
 *   DROP TABLE tp_qap1db.aircraft_passengers;
    	   tp_qap1db         heap    postgres    false    6            ?            1259    33184    airports    TABLE     ?   CREATE TABLE tp_qap1db.airports (
    id bigint NOT NULL,
    "airportName" text NOT NULL,
    "airportCode" character varying(3) NOT NULL,
    city_id bigint NOT NULL
);
    DROP TABLE tp_qap1db.airports;
    	   tp_qap1db         heap    postgres    false    6            ?            1259    33189    airports_passengers    TABLE     s   CREATE TABLE tp_qap1db.airports_passengers (
    airports_id bigint NOT NULL,
    passengers_id bigint NOT NULL
);
 *   DROP TABLE tp_qap1db.airports_passengers;
    	   tp_qap1db         heap    postgres    false    6            ?            1259    33192    cities    TABLE     ?   CREATE TABLE tp_qap1db.cities (
    id bigint NOT NULL,
    "cityName" text NOT NULL,
    state text NOT NULL,
    population bigint NOT NULL
);
    DROP TABLE tp_qap1db.cities;
    	   tp_qap1db         heap    postgres    false    6            ?            1259    33197 
   passengers    TABLE     ?   CREATE TABLE tp_qap1db.passengers (
    id bigint NOT NULL,
    firstname text NOT NULL,
    lastname text NOT NULL,
    "phnNum" character varying(10) NOT NULL,
    city_id bigint NOT NULL
);
 !   DROP TABLE tp_qap1db.passengers;
    	   tp_qap1db         heap    postgres    false    6            ?            1259    33202    passengers_aircraft    TABLE     ?   CREATE TABLE tp_qap1db.passengers_aircraft (
    id bigint NOT NULL,
    passengers_id bigint NOT NULL,
    aircraft_id bigint NOT NULL
);
 *   DROP TABLE tp_qap1db.passengers_aircraft;
    	   tp_qap1db         heap    postgres    false    6            '          0    33173    aircraft 
   TABLE DATA           X   COPY tp_qap1db.aircraft (id, aircraft_type, "airlineName", "numPassengers") FROM stdin;
 	   tp_qap1db          postgres    false    210   0       (          0    33178    aircraft_airports 
   TABLE DATA           G   COPY tp_qap1db.aircraft_airports (aircraft_id, airport_id) FROM stdin;
 	   tp_qap1db          postgres    false    211   ?0       )          0    33181    aircraft_passengers 
   TABLE DATA           L   COPY tp_qap1db.aircraft_passengers (aircraft_id, passengers_id) FROM stdin;
 	   tp_qap1db          postgres    false    212   ?1       *          0    33184    airports 
   TABLE DATA           P   COPY tp_qap1db.airports (id, "airportName", "airportCode", city_id) FROM stdin;
 	   tp_qap1db          postgres    false    213   ?1       +          0    33189    airports_passengers 
   TABLE DATA           L   COPY tp_qap1db.airports_passengers (airports_id, passengers_id) FROM stdin;
 	   tp_qap1db          postgres    false    214   ?3       ,          0    33192    cities 
   TABLE DATA           F   COPY tp_qap1db.cities (id, "cityName", state, population) FROM stdin;
 	   tp_qap1db          postgres    false    215   ?3       -          0    33197 
   passengers 
   TABLE DATA           S   COPY tp_qap1db.passengers (id, firstname, lastname, "phnNum", city_id) FROM stdin;
 	   tp_qap1db          postgres    false    216   ?4       .          0    33202    passengers_aircraft 
   TABLE DATA           P   COPY tp_qap1db.passengers_aircraft (id, passengers_id, aircraft_id) FROM stdin;
 	   tp_qap1db          postgres    false    217   _6       ?           2606    33206    aircraft aircraft_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY tp_qap1db.aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY tp_qap1db.aircraft DROP CONSTRAINT aircraft_pkey;
    	   tp_qap1db            postgres    false    210            ?           2606    33208 /   airports_passengers airports_passengers_compKey 
   CONSTRAINT     ?   ALTER TABLE ONLY tp_qap1db.airports_passengers
    ADD CONSTRAINT "airports_passengers_compKey" PRIMARY KEY (airports_id, passengers_id) INCLUDE (airports_id, passengers_id);
 ^   ALTER TABLE ONLY tp_qap1db.airports_passengers DROP CONSTRAINT "airports_passengers_compKey";
    	   tp_qap1db            postgres    false    214    214            ?           2606    33210    airports airports_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY tp_qap1db.airports
    ADD CONSTRAINT airports_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY tp_qap1db.airports DROP CONSTRAINT airports_pkey;
    	   tp_qap1db            postgres    false    213            ?           2606    33212    cities cities_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY tp_qap1db.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY tp_qap1db.cities DROP CONSTRAINT cities_pkey;
    	   tp_qap1db            postgres    false    215            ?           2606    33214    aircraft_passengers compKey 
   CONSTRAINT     ?   ALTER TABLE ONLY tp_qap1db.aircraft_passengers
    ADD CONSTRAINT "compKey" PRIMARY KEY (aircraft_id, passengers_id) INCLUDE (aircraft_id, passengers_id);
 J   ALTER TABLE ONLY tp_qap1db.aircraft_passengers DROP CONSTRAINT "compKey";
    	   tp_qap1db            postgres    false    212    212            ?           2606    33216    aircraft_airports compositeKey 
   CONSTRAINT     ?   ALTER TABLE ONLY tp_qap1db.aircraft_airports
    ADD CONSTRAINT "compositeKey" PRIMARY KEY (aircraft_id, airport_id) INCLUDE (aircraft_id, airport_id);
 M   ALTER TABLE ONLY tp_qap1db.aircraft_airports DROP CONSTRAINT "compositeKey";
    	   tp_qap1db            postgres    false    211    211            ?           2606    33218 ,   passengers_aircraft passengers_aircraft_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY tp_qap1db.passengers_aircraft
    ADD CONSTRAINT passengers_aircraft_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY tp_qap1db.passengers_aircraft DROP CONSTRAINT passengers_aircraft_pkey;
    	   tp_qap1db            postgres    false    217            ?           2606    33220    passengers passengers_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY tp_qap1db.passengers
    ADD CONSTRAINT passengers_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY tp_qap1db.passengers DROP CONSTRAINT passengers_pkey;
    	   tp_qap1db            postgres    false    216            ?           2606    33221    passengers_aircraft aircraftFK    FK CONSTRAINT     ?   ALTER TABLE ONLY tp_qap1db.passengers_aircraft
    ADD CONSTRAINT "aircraftFK" FOREIGN KEY (aircraft_id) REFERENCES tp_qap1db.aircraft(id);
 M   ALTER TABLE ONLY tp_qap1db.passengers_aircraft DROP CONSTRAINT "aircraftFK";
    	   tp_qap1db          postgres    false    217    3459    210            ?           2606    33226    aircraft_passengers aircraftFK    FK CONSTRAINT     ?   ALTER TABLE ONLY tp_qap1db.aircraft_passengers
    ADD CONSTRAINT "aircraftFK" FOREIGN KEY (aircraft_id) REFERENCES tp_qap1db.aircraft(id);
 M   ALTER TABLE ONLY tp_qap1db.aircraft_passengers DROP CONSTRAINT "aircraftFK";
    	   tp_qap1db          postgres    false    210    212    3459            ?           2606    33231    aircraft_airports aircraft_id    FK CONSTRAINT     ?   ALTER TABLE ONLY tp_qap1db.aircraft_airports
    ADD CONSTRAINT aircraft_id FOREIGN KEY (aircraft_id) REFERENCES tp_qap1db.aircraft(id);
 J   ALTER TABLE ONLY tp_qap1db.aircraft_airports DROP CONSTRAINT aircraft_id;
    	   tp_qap1db          postgres    false    211    3459    210            ?           2606    33236    aircraft_airports airportFK    FK CONSTRAINT     ?   ALTER TABLE ONLY tp_qap1db.aircraft_airports
    ADD CONSTRAINT "airportFK" FOREIGN KEY (airport_id) REFERENCES tp_qap1db.airports(id);
 J   ALTER TABLE ONLY tp_qap1db.aircraft_airports DROP CONSTRAINT "airportFK";
    	   tp_qap1db          postgres    false    213    211    3465            ?           2606    33241    airports_passengers airportsFK    FK CONSTRAINT     ?   ALTER TABLE ONLY tp_qap1db.airports_passengers
    ADD CONSTRAINT "airportsFK" FOREIGN KEY (airports_id) REFERENCES tp_qap1db.airports(id) NOT VALID;
 M   ALTER TABLE ONLY tp_qap1db.airports_passengers DROP CONSTRAINT "airportsFK";
    	   tp_qap1db          postgres    false    214    3465    213            ?           2606    33246    airports cityFK    FK CONSTRAINT     w   ALTER TABLE ONLY tp_qap1db.airports
    ADD CONSTRAINT "cityFK" FOREIGN KEY (city_id) REFERENCES tp_qap1db.cities(id);
 >   ALTER TABLE ONLY tp_qap1db.airports DROP CONSTRAINT "cityFK";
    	   tp_qap1db          postgres    false    213    3469    215            ?           2606    33251    passengers cityFK    FK CONSTRAINT     y   ALTER TABLE ONLY tp_qap1db.passengers
    ADD CONSTRAINT "cityFK" FOREIGN KEY (city_id) REFERENCES tp_qap1db.cities(id);
 @   ALTER TABLE ONLY tp_qap1db.passengers DROP CONSTRAINT "cityFK";
    	   tp_qap1db          postgres    false    3469    215    216            ?           2606    33256     passengers_aircraft passengersFK    FK CONSTRAINT     ?   ALTER TABLE ONLY tp_qap1db.passengers_aircraft
    ADD CONSTRAINT "passengersFK" FOREIGN KEY (passengers_id) REFERENCES tp_qap1db.passengers(id);
 O   ALTER TABLE ONLY tp_qap1db.passengers_aircraft DROP CONSTRAINT "passengersFK";
    	   tp_qap1db          postgres    false    3471    216    217            ?           2606    33261     aircraft_passengers passengersFK    FK CONSTRAINT     ?   ALTER TABLE ONLY tp_qap1db.aircraft_passengers
    ADD CONSTRAINT "passengersFK" FOREIGN KEY (passengers_id) REFERENCES tp_qap1db.passengers(id);
 O   ALTER TABLE ONLY tp_qap1db.aircraft_passengers DROP CONSTRAINT "passengersFK";
    	   tp_qap1db          postgres    false    212    3471    216            ?           2606    33266     airports_passengers passengersFK    FK CONSTRAINT     ?   ALTER TABLE ONLY tp_qap1db.airports_passengers
    ADD CONSTRAINT "passengersFK" FOREIGN KEY (passengers_id) REFERENCES tp_qap1db.passengers(id) NOT VALID;
 O   ALTER TABLE ONLY tp_qap1db.airports_passengers DROP CONSTRAINT "passengersFK";
    	   tp_qap1db          postgres    false    216    214    3471            '   ?   x?M?1?0E??)r'?@	???cg?@F3B?I?^?`t?3????gm??+????@?2?_???I??x^???j???dWh?3J?n?L???6?v$?H???O??ۼ??W?p`P0?f???M??p?&?a0J?m??b?yC?T??S?(??B?F?o:??E,?ZsR?ѐKd?c?N?      (   ?   x??A?!??a??????c*.?%)??il???
΋J?<]?>Z}fq'??]??-x?F?p}s'9'|?'^?'|?&??;??0_?{?/?E+?b.??~?L?5^??fn??o??o|M?N2??/??XF?YR?G?F??v??FN G?w??xs?w??7?W?w????~??A???1?]?2?      )      x?????? ? ?      *   ?  x?}?Ko?0??׿??f1??fiBI?$ ??3??!W?J?+'????FՌ&???Y?|>?/????????jY)?e???o?VO???pY<$Fk??[A~??A?>?>?@ړiK???@????a)?/+??G???CMɅ?`?eKp(?+??S??1)???I??A?^vD?aSW?-q^?t`??ÀM Ri]?7d4?9???4_t????iۗ???????B(?????;?Em??K?CY?/??:IH????j?>?U?6???ξ????EE?9rOUm5?C?3w ??7i??;;,jwH?)???#?HU???%4Z?4??3L?;????????zE{??{?jv?,?wUm???g??)s'?k?(??????q?L?Gc/HRf??g?+????K6/,E n???p????m??tz49????a???g      +   A   x?Ĺ 1??[̍)????:N
 ?D?
F?ꬴ58?j?VYGյ???^??ŧ?r#Z?>?jy?      ,   ?   x?=??J?@E??_?/??N???B!?/7?L?i? ?y??\^ν???r?zɲ?Q ?dۨ,<NB???[?[
??^?`U???s?"\??Rꔃ=]?wY??????A?!%??k?J#???????W?0?̀3?m_V????ب?/x?????AJ?.Ym?J??:?9g?g*?j?j>?_??p'??J??u???:??ja????H?*???S??mJ!?N}?(?~ ??RF      -   ?  x?5R???0??p?\??+ظ ?I???iH8?(*??>+ɷ????<V?eb?S??֣?J
ﵬ?kN?e??%4????ih??("T??a$???*?,??iz.Մ???c??R?ז???6?y?2 X??5??7??چݐRF;?????????[Y?V?ӓ?/??sZ??D?L΅?n?????ϵ<?`+???/c)?3s??p????s???;V?З1rKu?y?b??gE?2?c?s??
???gS5?:???I?|???؛?Hs?h????rM?g?-+??疹?+????TS??Hi^K=??t?qSC?)Þ???2o?v)?=L9o???? ??{?i?De?k??N??{???Nc???????"???\??      .   x   x???!??v17??e????Ǟ?HI?En?JӃ|=?~??%޼????7?^???SZ?i1??L??,??Ⱦ??(w[=????n?,??DSC(?5?b??m??w.?????l??V     