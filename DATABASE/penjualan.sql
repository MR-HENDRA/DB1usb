PGDMP     -    
                z            penjualan_db    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16523    penjualan_db    DATABASE     l   CREATE DATABASE penjualan_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE penjualan_db;
                postgres    false            �            1259    16529 	   barang_tb    TABLE     �   CREATE TABLE public.barang_tb (
    id_barang integer NOT NULL,
    nama_barang character varying(100) NOT NULL,
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang_tb;
       public         heap    postgres    false            �            1259    16549    pembayaran_tb    TABLE     �   CREATE TABLE public.pembayaran_tb (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
 !   DROP TABLE public.pembayaran_tb;
       public         heap    postgres    false            �            1259    16539 
   pembeli_tb    TABLE     �   CREATE TABLE public.pembeli_tb (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30) NOT NULL,
    jk character(1),
    telp_pembeli character(15),
    alamat_pembeli character varying(50)
);
    DROP TABLE public.pembeli_tb;
       public         heap    postgres    false            �            1259    16524    supplier_tb    TABLE     �   CREATE TABLE public.supplier_tb (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    no_telp character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier_tb;
       public         heap    postgres    false            �            1259    16544    transaksi_tb    TABLE     �   CREATE TABLE public.transaksi_tb (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
     DROP TABLE public.transaksi_tb;
       public         heap    postgres    false                      0    16529 	   barang_tb 
   TABLE DATA           U   COPY public.barang_tb (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    210   �                 0    16549    pembayaran_tb 
   TABLE DATA           `   COPY public.pembayaran_tb (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    213   k                 0    16539 
   pembeli_tb 
   TABLE DATA           `   COPY public.pembeli_tb (id_pembeli, nama_pembeli, jk, telp_pembeli, alamat_pembeli) FROM stdin;
    public          postgres    false    211   �                 0    16524    supplier_tb 
   TABLE DATA           R   COPY public.supplier_tb (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    209   Y                 0    16544    transaksi_tb 
   TABLE DATA           `   COPY public.transaksi_tb (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    212          n           2606    16533    barang_tb barang_tb_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.barang_tb
    ADD CONSTRAINT barang_tb_pkey PRIMARY KEY (id_barang);
 B   ALTER TABLE ONLY public.barang_tb DROP CONSTRAINT barang_tb_pkey;
       public            postgres    false    210            t           2606    16553     pembayaran_tb pembayaran_tb_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.pembayaran_tb
    ADD CONSTRAINT pembayaran_tb_pkey PRIMARY KEY (id_pembayaran);
 J   ALTER TABLE ONLY public.pembayaran_tb DROP CONSTRAINT pembayaran_tb_pkey;
       public            postgres    false    213            p           2606    16543    pembeli_tb pembeli_tb_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pembeli_tb
    ADD CONSTRAINT pembeli_tb_pkey PRIMARY KEY (id_pembeli);
 D   ALTER TABLE ONLY public.pembeli_tb DROP CONSTRAINT pembeli_tb_pkey;
       public            postgres    false    211            l           2606    16528    supplier_tb supplier_tb_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.supplier_tb
    ADD CONSTRAINT supplier_tb_pkey PRIMARY KEY (id_supplier);
 F   ALTER TABLE ONLY public.supplier_tb DROP CONSTRAINT supplier_tb_pkey;
       public            postgres    false    209            r           2606    16548    transaksi_tb transaksi_tb_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.transaksi_tb
    ADD CONSTRAINT transaksi_tb_pkey PRIMARY KEY (id_transaksi);
 H   ALTER TABLE ONLY public.transaksi_tb DROP CONSTRAINT transaksi_tb_pkey;
       public            postgres    false    212            v           2606    16559     transaksi_tb fk_barang_transaksi    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi_tb
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang_tb(id_barang) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.transaksi_tb DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    3182    212    210            w           2606    16564 !   transaksi_tb fk_pembeli_transaksi    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi_tb
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli_tb(id_pembeli) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.transaksi_tb DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    3184    212    211            u           2606    16554    barang_tb fk_supplier_barang    FK CONSTRAINT     �   ALTER TABLE ONLY public.barang_tb
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier_tb(id_supplier) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.barang_tb DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    210    209    3180            x           2606    16569 %   pembayaran_tb fk_transaksi_pembayaran    FK CONSTRAINT     �   ALTER TABLE ONLY public.pembayaran_tb
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi_tb(id_transaksi) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.pembayaran_tb DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    212    3186    213               �   x�u�K
�0�ur�\@I��XDAܨTnF;�b����7Ӥ�l2ߟ?�t�u$v���hJu��hE���09`��%�j��Tsj�0{�>f��G8׆�V����
bH8�%,-j�m�U�h��&ަl�h^����8�8c|l�*�OE����=��u)��p!?F         F   x�m��	 !D�sҋ2�$b1������'L��$V0M�),�S|���)�%��,�m�Я����9         �   x�360220�t�,����4�0226153��T N�ĤļD.c�*#ΰ�D�c5>��@E�EƜ~PE&(�B�3sJ!�L8�2�8}��LѬ+-*�e�阓�Ve�[��G"�Vf��.=�Ĝ��D�=... �C4�         �   x�U�M�0��5=EO@����AP
.H�L1�� �����Y?�ac���NK��Z��Ad�,�5�7�e;����|Z�o���5�ɖ������^B^��u`�L�mI,�$P� �Xj{�S|��
����%t�0��C��s���#~_v�I!gi��}�}K�:!���A�         U   x�m�;
�@E�z����僋���q�(H��r9�2� ���֘��}�ϼΗ����2M�Ŵe�̊Y�<��E�(;6"� G=0
     