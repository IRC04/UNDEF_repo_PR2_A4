PGDMP  	             
        }           Prueba2    17.5    17.5     +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            .           1262    16635    Prueba2    DATABASE     |   CREATE DATABASE "Prueba2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Prueba2";
                     postgres    false            �            1259    16840    almacen    TABLE     v   CREATE TABLE public.almacen (
    id_pedido uuid NOT NULL,
    piso integer,
    fila integer,
    columna integer
);
    DROP TABLE public.almacen;
       public         heap r       postgres    false            �            1259    16823    cliente    TABLE     k   CREATE TABLE public.cliente (
    dni character varying(9) NOT NULL,
    nombreyapellidos text NOT NULL
);
    DROP TABLE public.cliente;
       public         heap r       postgres    false            �            1259    16830    pedido    TABLE     �   CREATE TABLE public.pedido (
    id_pedido uuid NOT NULL,
    color character varying(20),
    talla character varying(5),
    dni_cliente character varying(9)
);
    DROP TABLE public.pedido;
       public         heap r       postgres    false            (          0    16840    almacen 
   TABLE DATA           A   COPY public.almacen (id_pedido, piso, fila, columna) FROM stdin;
    public               postgres    false    219   �       &          0    16823    cliente 
   TABLE DATA           8   COPY public.cliente (dni, nombreyapellidos) FROM stdin;
    public               postgres    false    217   o       '          0    16830    pedido 
   TABLE DATA           F   COPY public.pedido (id_pedido, color, talla, dni_cliente) FROM stdin;
    public               postgres    false    218   �       �           2606    16844    almacen almacen_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.almacen
    ADD CONSTRAINT almacen_pkey PRIMARY KEY (id_pedido);
 >   ALTER TABLE ONLY public.almacen DROP CONSTRAINT almacen_pkey;
       public                 postgres    false    219            �           2606    16829    cliente cliente_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (dni);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public                 postgres    false    217            �           2606    16834    pedido pedido_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id_pedido);
 <   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
       public                 postgres    false    218            �           2606    16845    almacen almacen_id_pedido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.almacen
    ADD CONSTRAINT almacen_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedido(id_pedido);
 H   ALTER TABLE ONLY public.almacen DROP CONSTRAINT almacen_id_pedido_fkey;
       public               postgres    false    4752    219    218            �           2606    16835    pedido pedido_dni_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_dni_cliente_fkey FOREIGN KEY (dni_cliente) REFERENCES public.cliente(dni);
 H   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_dni_cliente_fkey;
       public               postgres    false    218    4750    217            (   �  x�M�A�� E����/PP�D��Od�Kh^� I2J�܋x0n��;�i;(���rGi��������VQ����e�w r�羢��7��(��U,s�����޿^4�l�Mp(8QA,s�F+I_&7�w{�[��pDR}�7�^��b���4� EE(ݓO�)����Bn DVO�:���Tk���Щuב���M4��hg�\�Ez�c�(�Չ���"p�Kј�CK�:c��s:e(�wNWG��د�m�*�	���9��Td�]�t���9÷/Sha�%F�i��xh� �N�Ni8���)�6��}ߓ�kv�
��n�Tӡ+�s�c|_)}��=��'�)����-��yљ��*C�o�F�&+`��̹d4�������|�#�      &     x�ePAN�0<�_��8N�HS��J�']�ԉl��=q㚏�( ؽ�fvwF�b��"��@K��4�ҮϚ��G�o���
�v����~�����k|�
xmH�"!9�VptG|��,l��m�]�5�`�$,c���ڵ��{�%�\N�����ߨ�.G���Џ�~����&H2�&J����h���J�R��a����}����lê��I.�a�������+��hs��8��a;L^����6t�      '     x�m�ˊ�1����D�6i�娈GA����䁑F�x��gF�߮|O���>6�׮���V�²�ѣ��^�\�m�RYZכl$zM�T����.�<���E+�M=�ܑJ���b`k5po���/�~S$�9$Z�����\�Q[�������$���ӷ�7�������GL"K�i){
y����.qI���j|��k#D �q���G{����?س�뙲'�\gW����im��`K�nC6�$.!Rg1(a�7���us\}(xU:������l��\���g��θ���T�k�2���>K�G��x�����V�?�K�=�SA�~l�)��L����(@>����AP�p3�p%u�f6�C�W���c�d���ZdbX���`r��k߱^��{_�T-�&l��U�m6�8�{�N��!����a��/0�q5�t��:;����E����a߇K>�KVR�JZۛ�VPeX�Z��
�mB%��j��C4US�$�}��$����n     