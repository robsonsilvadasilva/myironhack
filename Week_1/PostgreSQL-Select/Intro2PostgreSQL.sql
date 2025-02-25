PGDMP     	        
        
    w            publications    12.1    12.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17051    publications    DATABASE     j   CREATE DATABASE publications WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE publications;
                postgres    false            �            1259    17052    authors    TABLE       CREATE TABLE public.authors (
    au_id character varying(11) DEFAULT NULL::character varying,
    au_lname character varying(14) DEFAULT NULL::character varying,
    au_fname character varying(11) DEFAULT NULL::character varying,
    phone character varying(12) DEFAULT NULL::character varying,
    address character varying(20) DEFAULT NULL::character varying,
    city character varying(14) DEFAULT NULL::character varying,
    state character varying(2) DEFAULT NULL::character varying,
    zip integer,
    contract smallint
);
    DROP TABLE public.authors;
       public         heap    postgres    false            �            1259    17062 	   discounts    TABLE     `  CREATE TABLE public.discounts (
    discounttype character varying(17) DEFAULT NULL::character varying,
    stor_id character varying(4) DEFAULT NULL::character varying,
    lowqty character varying(3) DEFAULT NULL::character varying,
    highqty character varying(4) DEFAULT NULL::character varying,
    discount numeric(4,2) DEFAULT NULL::numeric
);
    DROP TABLE public.discounts;
       public         heap    postgres    false            �            1259    17070    employee    TABLE     �  CREATE TABLE public.employee (
    emp_id character varying(9) DEFAULT NULL::character varying,
    fname character varying(9) DEFAULT NULL::character varying,
    minit character varying(1) DEFAULT NULL::character varying,
    lname character varying(9) DEFAULT NULL::character varying,
    job_id smallint,
    job_lvl smallint,
    pub_id smallint,
    hire_date character varying(19) DEFAULT NULL::character varying
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    17078    jobs    TABLE     �   CREATE TABLE public.jobs (
    job_id smallint,
    job_desc character varying(28) DEFAULT NULL::character varying,
    min_lvl smallint,
    max_lvl smallint
);
    DROP TABLE public.jobs;
       public         heap    postgres    false            �            1259    17085 
   publishers    TABLE     >  CREATE TABLE public.publishers (
    pub_id smallint,
    pub_name character varying(21) DEFAULT NULL::character varying,
    city character varying(10) DEFAULT NULL::character varying,
    state character varying(2) DEFAULT NULL::character varying,
    country character varying(7) DEFAULT NULL::character varying
);
    DROP TABLE public.publishers;
       public         heap    postgres    false            �            1259    17092    roysched    TABLE     �   CREATE TABLE public.roysched (
    title_id character varying(6) DEFAULT NULL::character varying,
    lorange integer,
    hirange integer,
    royalty smallint
);
    DROP TABLE public.roysched;
       public         heap    postgres    false            �            1259    17096    sales    TABLE     S  CREATE TABLE public.sales (
    stor_id smallint,
    ord_num character varying(8) DEFAULT NULL::character varying,
    ord_date character varying(19) DEFAULT NULL::character varying,
    qty smallint,
    payterms character varying(10) DEFAULT NULL::character varying,
    title_id character varying(6) DEFAULT NULL::character varying
);
    DROP TABLE public.sales;
       public         heap    postgres    false            �            1259    17103    stores    TABLE     R  CREATE TABLE public.stores (
    stor_id smallint,
    stor_name character varying(36) DEFAULT NULL::character varying,
    stor_address character varying(19) DEFAULT NULL::character varying,
    city character varying(9) DEFAULT NULL::character varying,
    state character varying(2) DEFAULT NULL::character varying,
    zip integer
);
    DROP TABLE public.stores;
       public         heap    postgres    false            �            1259    17110    titleauthor    TABLE     �   CREATE TABLE public.titleauthor (
    au_id character varying(11) DEFAULT NULL::character varying,
    title_id character varying(6) DEFAULT NULL::character varying,
    au_ord smallint,
    royaltyper smallint
);
    DROP TABLE public.titleauthor;
       public         heap    postgres    false            �            1259    17115    titles    TABLE     �  CREATE TABLE public.titles (
    title_id character varying(6) DEFAULT NULL::character varying,
    title character varying(63) DEFAULT NULL::character varying,
    type character varying(12) DEFAULT NULL::character varying,
    pub_id smallint,
    price character varying(7) DEFAULT NULL::character varying,
    advance character varying(10) DEFAULT NULL::character varying,
    royalty character varying(2) DEFAULT NULL::character varying,
    ytd_sales character varying(5) DEFAULT NULL::character varying,
    notes character varying(179) DEFAULT NULL::character varying,
    pubdate character varying(19) DEFAULT NULL::character varying
);
    DROP TABLE public.titles;
       public         heap    postgres    false            �          0    17052    authors 
   TABLE DATA           h   COPY public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) FROM stdin;
    public          postgres    false    202   �       �          0    17062 	   discounts 
   TABLE DATA           U   COPY public.discounts (discounttype, stor_id, lowqty, highqty, discount) FROM stdin;
    public          postgres    false    203   $       �          0    17070    employee 
   TABLE DATA           c   COPY public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) FROM stdin;
    public          postgres    false    204   i$       �          0    17078    jobs 
   TABLE DATA           B   COPY public.jobs (job_id, job_desc, min_lvl, max_lvl) FROM stdin;
    public          postgres    false    205   8)       �          0    17085 
   publishers 
   TABLE DATA           L   COPY public.publishers (pub_id, pub_name, city, state, country) FROM stdin;
    public          postgres    false    206   A*       �          0    17092    roysched 
   TABLE DATA           G   COPY public.roysched (title_id, lorange, hirange, royalty) FROM stdin;
    public          postgres    false    207   :+       �          0    17096    sales 
   TABLE DATA           T   COPY public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) FROM stdin;
    public          postgres    false    208   -       �          0    17103    stores 
   TABLE DATA           T   COPY public.stores (stor_id, stor_name, stor_address, city, state, zip) FROM stdin;
    public          postgres    false    209   p.       �          0    17110    titleauthor 
   TABLE DATA           J   COPY public.titleauthor (au_id, title_id, au_ord, royaltyper) FROM stdin;
    public          postgres    false    210   �/       �          0    17115    titles 
   TABLE DATA           s   COPY public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) FROM stdin;
    public          postgres    false    211   �0       �   	  x��U�n7]_}�.����d�vbņ�4(�-�T��9����@�Mx'��<���M+!��o�n��q8��Г�)o+eK��V�U������6�O��H�%yť&���m�i���r�=mB�{�]$%4�h\rj�g��{��.�oJ����f�+`�k�n�5��!J�C��T��r�̴��2��]�n�Z�|�)�g$�+-c%�zEw��Ɛϴ�v�SU)�K*�HJ�N�5*l�
nB�6���0Ɗ���ܬjo|�m����D�1���kU#���l=�a�~��=���X'i��Mx�'1�-s�m�2�M7����c���n���]�O[2�+E|��otq�;X��q��c��\�O�$��Va��P���MI^�R.O)Ѳ�)?Q� y�Vi ߊrЊe������b��(�Vt�S���V�<��ym��t�V�?�zI�)�(ZU�U	�����X�BN��륝F�P/��*a�=���%�9��nܽ1-�-4h��+3�5�f�=(�S�d *=����W9�Cf��i�g�9����җ��Z���A5=uV��v�85�!���Sׇ�'�[f��n.Ikv�qR��P�_��m+Y�V������ ����8��j�^�LضK�1�5�R���ޖ�}��5�yጥ}Ll�	�Agƪ�c�NZ�� !<���I��-��isCʉ�܉F�F+�0��w�3�ʤ�X�E���R�������o>��m�Q�-���3L�á������괾��O9���`?w�	�1L8!���Ǌ�j5wY)���.�zE�PòZ�؂�		���{���>���2zf����Q�3z��h��W������T�0��u~xm`u���W�P��s�K���Z8|��~ �� !��c����|[V!�v�٭�~��o֕�*\�$A��4��.�]�Y���`���?����0'��Dr�����V�Y�������X��n�1�u7���r�P�Gy�Z5:�-=F\������b��k��      �   Q   x����,�L�Qp.-.��M-��"C=S������T�����Ҽ��p��p�4"�X�A�0�30������ a��      �   �  x�UVKO�H>�bo{�_~��L2!��`��� ��	���ӽ�F̯�*O m	.U��:e�ȹ��
���E��A����5O8KD�cO��2��H�xo���¹�#d�S�&�#`�䩒rBK�<H�!��4�'<��[�,�'�y���,�������eiۜ�2a<��X�E�rU���]`k�{�lA
��]�05�uq��bEP�-�A{8��8"1��Oz-̢��۽�J�x���vp���w����cYF˲h���.K�d�s�%�wd�ȩ�bFϗ�J)A�|��/$h<�=T�B�+���<�]%�I���z�n8t���P D�)
K8�*�Ȼ�>eB��L�k����;�rIKE�𣯨ur+u.
R����N.�k�z&ź��,��`ovt�J�7/� �>��˄��6U�BJ������g��D2��x_�<V"�_�5D��2O��J�D�8����plW�LI�7n�7�M�ǁ���D�`�xd��f��9����?���g��̈�
y�Z!��Cgߑ�>��v.�sJ#�4��Jp���ʜ{���CLW���q���uRe����T��!LQ�(r��:i4��k��3��[כ)ǳ4�s�d'1�j8� �3���%�B�F���s^H�^h\	�	��ȹ�6�b�ls�֙������?���HG�ƛ��THb���h�6�Nd9<�9U39껭RK	8��}0�h9� ħsY..�zӈTˉURcM�#�#V��H��B����V�L���w��ּY�O�/I���fQc�3�5f��'.�>l1�f�5e���lf�������t��%|}�d�Lg�7�ʯ��ƎH�z*�W�!�3��L5u�D&�z�=����P�p㊙O����l¹��5�lq4�O�u�;�cFO[����h��S(�䙋�9..�m�"��i����oL%��(���JQ6�j��u&p��u�?��+n�q�����Q*�X�k!D:iq��֫�])����b6o�ԩL	���� ��Ϙ���)��4�nk!�C"�U��耞�i<1��'�i�n�4x^���o�a;g��-Y�025�opI��߻S����ß�E��$������ߚ+\㷢o�0
U�p���9ҋ�X���Y��*�nĹ�a8:��ѝ~?9�q(�L�������p)�      �   �   x�m��N�0E����l7naɣ!A+زq�I:"r�� �ϸ)��J^��ϽcO�)�)�<��N�>�4������7{�F��Џ�>Pn��<F0J��J,�zL0%�0�L}H����^Y0Ɗ�蹣��'�M�a�����(�˝��K8�(�r]S�T� \1�o��Ì*���d����}�5�K���#%���J���6�����%S'6-�kǦƖ4���:L\f��0dW�q��b�6����\�(lw�      �   �   x�M��n�PE��W��KS0�,#� 1�Mk�f�Sxf�����Z����t}�=�7X�Pз�EX�"��Xl/y���YĚ�z5S[4�xC[k�Fl�L��X�����G��O�������44�����=6��T�Y��|�z�AR�+�]v#����	�"ca�m�^�'(�\H�t�B���eM�R2�p��J��i���4P�0��R�a�?g�F�Q�1�%9���8&]�      �   �  x�e�Mn%!�ׯ3�6��6�����r�sLl®?�����)	�ҫ��^���	�')됯����o1n�%���ecy0�Ѫ��4Z�tZN�� {94���	���6pPM����Bj����{:oN�y�퇍���ŝs�R�u���x���7�������c�c�'0Ͷ�`u����텽Ȯ�!��Ss87l̹Y��j��.]6�l�����q;�;��c�h�}���'8��-��[
�	O]Шۗ��1�� �*�����1U�'�RVG��^M�Z��^M�B�?��M@�
0�}=l��:�
���r���c.�� W]6�;F2s�0�
�W��:���c^�<�k��k��ʪ|+�>�Qݻsq� �	2Z\ժQ����OZ�ߌ�+�+%z�:��&�*�����+����~J�R�[��פ{��s]���2e      �   O  x���=n1�k�\�h~l��nٔ@v�R�AM�D9�w�5�1r�=?�̳� �A�1ZѠ] �䣜��j�������L�L�Dw������(���g��2ωoC������\u�޶�������X؈z�6P���g��)�L�A7���]˄�Oo	�^RiAF��hB��Y1upQ��+ܤش4*:� �y��"	Y��SE�X8�SÜBL��b�B�a���Қ�޺1H�Ԃ�i)����z CX��*{�=�8�����u�;񻒍�(diGwR{喿_�uB<>0����'<Հ�M���y��������ϥ��$�3      �     x�5��R1���Sl�L�؀"��ج\n�K�d���@�m���_������ז�z�A�3b�)�S���ac�����@md���J���K�}�Ji\Q��:��S���,�#m�3����F��i�*�qކȸ�!,|�gb/��J�b\���>K�|KԵ|�%ׄ�����$��{j��-�`m��e��YB�<�K��5x�?`j\R�F�.�`{��b!eQ#���\(]�n^��]���u^$��C!��edm      �     x�m�Mn�0���]����mg])R�]��>{�6�����J�$��!�4a�T�|P����%lڴ�+W�~XRu���@�ob��Z��8;���#�N�TV���P~6r.ꃂ9���p�@#)('��c7����)�9H%9'-�%pO������R���+_.H���?	���(yG����P�Y�ԅ�wG�X�[t���ˤ�۝�X�3(��c�_}��Jh�>M5�<�G�9�Zz��Ӥ����y�s�%p���\�|_�4�L�f'���8��߶m��o(      �   �  x�}W]o�8|V~E�Ӽ؆$�e�8�\�69�:��X�e�D-I٣��WM�3ɞ���?BvuUW��}��a�������4N��K�����5*��������p6��`>�`�� � 
�Q8��4;%��3;�
�)$���lk�,-��I�u.���+JtY��M$�P�pJWv@OE�Xg��� �ϣ~8�G1������}��K��T��_�n�4vA��Y;��Kw�U"i�K��{t�`>~�n8�N�ȢΚ�rU9_s���45���Ɛ,d⌮TBFZ��H�_ph�FZG"݉ʉ�<�� �p:~�-E��o�;���é��s���$�;.�0��]��(�fӸc�@�pq)S4� Q�T�6�u���'��R5�4ӆ
�;��˾���L%r@¶}��M������?jt�@�	�0��6�Al� �6w�*�7������Gf�v��E���>G���a������@΂U�����-k��Up'@�9_��y�	�
������-}�;�K���H%�:�3���tz��X|�<o�b�q��DU��W���I���IB߷�
���\-��aG��o�Z)=������J�9w��$x5"�@���*�i{8�X�HEͽ�:q�4��{(��b(g�*��
WGѵL�I҇y���?,���}��\��a4�G8}JQ�����j	�w�ϓ�'G��(Y�E�5�u����z����\O�r��Yܒm�N�ʬ��^��<*G���ὄ����Ͼd�}^�_�ץH��`���	�21�y�^�鳊u�>�s�������(j�M���q֖G�8��zh���RTM&��/}��[W�9���xpl��Oʽ��J�uS���T g�u�E�)��h8���DV��`�n_��EW��˧*�S��cAw2;�k~Fu.�\��F ������a�]�'�mՋBY��k�
����I�_IU�A`Sw{)��;`�k4�uΤ0n�o�����;�$
�qt��uΣ �����+ꡒ%k���?
;A��t|a1�q��XTE�ku$9�׺&���I'Cob[�b�w��F�퀞%���N)�|��J�&�����p��2I�a���?����O�z'�d��~An�?�I��=������Īq��Uk�y߇��6 �Ә��ѥH -�	y&V�tI4�b�e��Rʪ9C�J!(M�8ce-8����C<�� 2XL}��{Y���ȁaɑh��������������$���#�#�o���J��ĳ1ȝ(q`7>�������<r���j���	:���p�T��%����N�ˏD{�����z���de�y�}�*"S����%!i4�P\o}�����x0ȓ��P�=���]�|]�h�����g)�l��o�`��E~ε<�d�1���
v.�p�au�^dX0��s�et	i>T�7�ŀɱ�c�Ve��'6/AI�8>�5/%���v��f^�#���g��;���y��T�(i���a��rp��5�cH� v��b>	��_12I���@n�8%�Rv�?|��"�m����(ٌ�-,8'�[Q8��/]�]�=��[���V���F��K/�ucsՃ������pF�N?n�{�*< �INy��L� +�H��������qK��mͫ֩R~^������[=�     