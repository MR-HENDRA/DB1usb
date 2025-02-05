PGDMP         #            
    z         	   retail_db    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16442 	   retail_db    DATABASE     i   CREATE DATABASE retail_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retail_db;
                postgres    false            �            1259    16453 	   barang_tb    TABLE     �   CREATE TABLE public.barang_tb (
    id_barang integer NOT NULL,
    nama_barang character varying(100) NOT NULL,
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang_tb;
       public         heap    postgres    false            �            1259    16463    pembayaran_tb    TABLE     �   CREATE TABLE public.pembayaran_tb (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
 !   DROP TABLE public.pembayaran_tb;
       public         heap    postgres    false            �            1259    16448 
   pembeli_tb    TABLE     �   CREATE TABLE public.pembeli_tb (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30) NOT NULL,
    jk character(1),
    no_telp_pembeli character(15),
    alamat_pembeli character varying(50)
);
    DROP TABLE public.pembeli_tb;
       public         heap    postgres    false            �            1259    16443    supplier_tb    TABLE     �   CREATE TABLE public.supplier_tb (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    no_telp character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier_tb;
       public         heap    postgres    false            �            1259    16458    transaksi_tb    TABLE     �   CREATE TABLE public.transaksi_tb (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
     DROP TABLE public.transaksi_tb;
       public         heap    postgres    false                      0    16453 	   barang_tb 
   TABLE DATA           U   COPY public.barang_tb (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    211   �                 0    16463    pembayaran_tb 
   TABLE DATA           `   COPY public.pembayaran_tb (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    213   c                 0    16448 
   pembeli_tb 
   TABLE DATA           c   COPY public.pembeli_tb (id_pembeli, nama_pembeli, jk, no_telp_pembeli, alamat_pembeli) FROM stdin;
    public          postgres    false    210   �                 0    16443    supplier_tb 
   TABLE DATA           R   COPY public.supplier_tb (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    209   [                 0    16458    transaksi_tb 
   TABLE DATA           `   COPY public.transaksi_tb (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    212   r       p           2606    16457    barang_tb barang_tb_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.barang_tb
    ADD CONSTRAINT barang_tb_pkey PRIMARY KEY (id_barang);
 B   ALTER TABLE ONLY public.barang_tb DROP CONSTRAINT barang_tb_pkey;
       public            postgres    false    211            t           2606    16467     pembayaran_tb pembayaran_tb_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.pembayaran_tb
    ADD CONSTRAINT pembayaran_tb_pkey PRIMARY KEY (id_pembayaran);
 J   ALTER TABLE ONLY public.pembayaran_tb DROP CONSTRAINT pembayaran_tb_pkey;
       public            postgres    false    213            n           2606    16452    pembeli_tb pembeli_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pembeli_tb
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 A   ALTER TABLE ONLY public.pembeli_tb DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    210            l           2606    16447    supplier_tb supplier_tb_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.supplier_tb
    ADD CONSTRAINT supplier_tb_pkey PRIMARY KEY (id_supplier);
 F   ALTER TABLE ONLY public.supplier_tb DROP CONSTRAINT supplier_tb_pkey;
       public            postgres    false    209            r           2606    16462    transaksi_tb transaksi_tb_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.transaksi_tb
    ADD CONSTRAINT transaksi_tb_pkey PRIMARY KEY (id_transaksi);
 H   ALTER TABLE ONLY public.transaksi_tb DROP CONSTRAINT transaksi_tb_pkey;
       public            postgres    false    212            v           2606    16508     transaksi_tb fk_barang_transaksi    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi_tb
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang_tb(id_barang) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.transaksi_tb DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    3184    212    211            w           2606    16513 !   transaksi_tb fk_pembeli_transaksi    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi_tb
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli_tb(id_pembeli) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.transaksi_tb DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    3182    212    210            u           2606    16503    barang_tb fk_supplier_barang    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang_tb
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier_tb(id_supplier) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.barang_tb DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    211    209    3180            x           2606    16518 %   pembayaran_tb fk_transaksi_pembayaran    FK CONSTRAINT     �   ALTER TABLE ONLY public.pembayaran_tb
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi_tb(id_transaksi) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.pembayaran_tb DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    212    3186    213               �  x�u��r�0���)��H��'GB��C/�x��1��?��O_Y�Ղ�/��|��i%��\p���9��>�5V)�轭a�4�a73$�V�Hg�l�[��Y38d�Tאp.�w;ql+�@����OY���4�²}�sŜK��j`��v�[&�+=+�X�X��k��с��`�s,t���#�7TcN9nަ�f"T׸�+�k�������f=KxX:x}����Vc6`6��T?%���!���T��k�Ѻ9�+=.=��g���|�]��;,]�������t��
� �8d��+��.}M�~� ��b=�o)�S γ���(e#r~Y�9�*��o4�"Ū_�aO�����p;�tg�e'D]����B�4�~�~"�$�ê<ꂺ�7�S��`�^�����e2�����         :   x�M��  C�3�EE�q�9=`/��%Յ�a6���d]@T����3�ݰ'��E7         �   x�����0���S� �Զ�8։��r�Jj�H�o�2���x���?��Bp6�'NB�R�R��\ā�a��P\���1�	wl[$��+(�]X��n�;���K����һ���R6�n"5�mƫ�OcD��ǭrJ=!MnI�R=����oY           x�U�Mn�0�p
 �����+%���(R7O�4����Ÿ��w^�|󰇱wrjq䴤\$���>������0��7�>�OP3 я�:�����kGA�Έ��цh�oR��"}JA�lh_�r'��$�5�`	�sۼ�͕9ӫ9�*Fy�͆6]C��|a��n9Ԇ�*�\�V���#�0��eT�Џ g�vE�U��Ĝ��0M�t� �n��X-��/�z���kC�7��ςD'�mi�!_G�u��xq         F   x�310220�4QF���]CC]#μ|���.��JC�J#�Jc��p�F���F0�1z\\\ �^�     