PGDMP         .                y         
   minimarket     13.2 (Ubuntu 13.2-1.pgdg18.04+1)     13.2 (Ubuntu 13.2-1.pgdg18.04+1) ?    m           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            n           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            o           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            p           1262    16971 
   minimarket    DATABASE     _   CREATE DATABASE minimarket WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'ru_RU.UTF-8';
    DROP DATABASE minimarket;
             	   joomart2k    false            ?            1259    17004 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap 	   joomart2k    false            ?            1259    17002    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       	   joomart2k    false    207            q           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       	   joomart2k    false    206            ?            1259    17014    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap 	   joomart2k    false            ?            1259    17012    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       	   joomart2k    false    209            r           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       	   joomart2k    false    208            ?            1259    16996    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap 	   joomart2k    false            ?            1259    16994    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       	   joomart2k    false    205            s           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       	   joomart2k    false    204            ?            1259    17022 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap 	   joomart2k    false            ?            1259    17032    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap 	   joomart2k    false            ?            1259    17030    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       	   joomart2k    false    213            t           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public       	   joomart2k    false    212            ?            1259    17020    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       	   joomart2k    false    211            u           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public       	   joomart2k    false    210            ?            1259    17040    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap 	   joomart2k    false            ?            1259    17038 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       	   joomart2k    false    215            v           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public       	   joomart2k    false    214            ?            1259    17146    authtoken_token    TABLE     ?   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap 	   joomart2k    false            ?            1259    17115    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap 	   joomart2k    false            ?            1259    17113    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       	   joomart2k    false    217            w           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       	   joomart2k    false    216            ?            1259    16986    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap 	   joomart2k    false            ?            1259    16984    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       	   joomart2k    false    203            x           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       	   joomart2k    false    202            ?            1259    16975    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 	   joomart2k    false            ?            1259    16973    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       	   joomart2k    false    201            y           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       	   joomart2k    false    200            ?            1259    17223    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap 	   joomart2k    false            ?            1259    17202    item_catalog    TABLE     ?   CREATE TABLE public.item_catalog (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    image character varying(100) NOT NULL
);
     DROP TABLE public.item_catalog;
       public         heap 	   joomart2k    false            ?            1259    17200    item_catalog_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.item_catalog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.item_catalog_id_seq;
       public       	   joomart2k    false    224            z           0    0    item_catalog_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.item_catalog_id_seq OWNED BY public.item_catalog.id;
          public       	   joomart2k    false    223            ?            1259    17166    item_category    TABLE     ?   CREATE TABLE public.item_category (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    catalog_id integer NOT NULL,
    image character varying(100) NOT NULL
);
 !   DROP TABLE public.item_category;
       public         heap 	   joomart2k    false            ?            1259    17164    item_category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.item_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.item_category_id_seq;
       public       	   joomart2k    false    220            {           0    0    item_category_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.item_category_id_seq OWNED BY public.item_category.id;
          public       	   joomart2k    false    219            ?            1259    17178    item_product    TABLE     ?  CREATE TABLE public.item_product (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    description text NOT NULL,
    image character varying(100) NOT NULL,
    price numeric(10,2) NOT NULL,
    available boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    category_id integer NOT NULL
);
     DROP TABLE public.item_product;
       public         heap 	   joomart2k    false            ?            1259    17176    item_product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.item_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.item_product_id_seq;
       public       	   joomart2k    false    222            |           0    0    item_product_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.item_product_id_seq OWNED BY public.item_product.id;
          public       	   joomart2k    false    221            ?            1259    17233    thumbnail_kvstore    TABLE     l   CREATE TABLE public.thumbnail_kvstore (
    key character varying(200) NOT NULL,
    value text NOT NULL
);
 %   DROP TABLE public.thumbnail_kvstore;
       public         heap 	   joomart2k    false            h           2604    17007    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    206    207    207            i           2604    17017    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    209    208    209            g           2604    16999    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    204    205    205            j           2604    17025    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    210    211    211            k           2604    17035    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    213    212    213            l           2604    17043    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    215    214    215            m           2604    17118    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    217    216    217            f           2604    16989    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    203    202    203            e           2604    16978    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    200    201    201            q           2604    17205    item_catalog id    DEFAULT     r   ALTER TABLE ONLY public.item_catalog ALTER COLUMN id SET DEFAULT nextval('public.item_catalog_id_seq'::regclass);
 >   ALTER TABLE public.item_catalog ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    224    223    224            o           2604    17169    item_category id    DEFAULT     t   ALTER TABLE ONLY public.item_category ALTER COLUMN id SET DEFAULT nextval('public.item_category_id_seq'::regclass);
 ?   ALTER TABLE public.item_category ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    220    219    220            p           2604    17181    item_product id    DEFAULT     r   ALTER TABLE ONLY public.item_product ALTER COLUMN id SET DEFAULT nextval('public.item_product_id_seq'::regclass);
 >   ALTER TABLE public.item_product ALTER COLUMN id DROP DEFAULT;
       public       	   joomart2k    false    221    222    222            W          0    17004 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public       	   joomart2k    false    207   ??       Y          0    17014    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       	   joomart2k    false    209   Ͽ       U          0    16996    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       	   joomart2k    false    205   ??       [          0    17022 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       	   joomart2k    false    211   ??       ]          0    17032    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       	   joomart2k    false    213   ??       _          0    17040    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       	   joomart2k    false    215   ??       b          0    17146    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public       	   joomart2k    false    218   ??       a          0    17115    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       	   joomart2k    false    217   ??       S          0    16986    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       	   joomart2k    false    203   _?       Q          0    16975    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       	   joomart2k    false    201   ??       i          0    17223    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       	   joomart2k    false    225   I?       h          0    17202    item_catalog 
   TABLE DATA           =   COPY public.item_catalog (id, name, slug, image) FROM stdin;
    public       	   joomart2k    false    224   b?       d          0    17166    item_category 
   TABLE DATA           J   COPY public.item_category (id, name, slug, catalog_id, image) FROM stdin;
    public       	   joomart2k    false    220   u?       f          0    17178    item_product 
   TABLE DATA           {   COPY public.item_product (id, name, slug, description, image, price, available, created, updated, category_id) FROM stdin;
    public       	   joomart2k    false    222   h?       j          0    17233    thumbnail_kvstore 
   TABLE DATA           7   COPY public.thumbnail_kvstore (key, value) FROM stdin;
    public       	   joomart2k    false    226   .?       }           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       	   joomart2k    false    206            ~           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       	   joomart2k    false    208                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public       	   joomart2k    false    204            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public       	   joomart2k    false    212            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public       	   joomart2k    false    210            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public       	   joomart2k    false    214            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);
          public       	   joomart2k    false    216            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public       	   joomart2k    false    202            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);
          public       	   joomart2k    false    200            ?           0    0    item_catalog_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.item_catalog_id_seq', 6, true);
          public       	   joomart2k    false    223            ?           0    0    item_category_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.item_category_id_seq', 5, true);
          public       	   joomart2k    false    219            ?           0    0    item_product_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.item_product_id_seq', 5, true);
          public       	   joomart2k    false    221                       2606    17144    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         	   joomart2k    false    207            ?           2606    17056 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         	   joomart2k    false    209    209            ?           2606    17019 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         	   joomart2k    false    209            ?           2606    17009    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         	   joomart2k    false    207            z           2606    17047 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         	   joomart2k    false    205    205            |           2606    17001 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         	   joomart2k    false    205            ?           2606    17037 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         	   joomart2k    false    213            ?           2606    17071 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         	   joomart2k    false    213    213            ?           2606    17027    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         	   joomart2k    false    211            ?           2606    17045 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         	   joomart2k    false    215            ?           2606    17085 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         	   joomart2k    false    215    215            ?           2606    17138     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         	   joomart2k    false    211            ?           2606    17150 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public         	   joomart2k    false    218            ?           2606    17152 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public         	   joomart2k    false    218            ?           2606    17124 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         	   joomart2k    false    217            u           2606    16993 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         	   joomart2k    false    203    203            w           2606    16991 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         	   joomart2k    false    203            s           2606    16983 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         	   joomart2k    false    201            ?           2606    17230 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         	   joomart2k    false    225            ?           2606    17209 "   item_catalog item_catalog_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.item_catalog
    ADD CONSTRAINT item_catalog_name_key UNIQUE (name);
 L   ALTER TABLE ONLY public.item_catalog DROP CONSTRAINT item_catalog_name_key;
       public         	   joomart2k    false    224            ?           2606    17207    item_catalog item_catalog_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.item_catalog
    ADD CONSTRAINT item_catalog_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.item_catalog DROP CONSTRAINT item_catalog_pkey;
       public         	   joomart2k    false    224            ?           2606    17211 "   item_catalog item_catalog_slug_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.item_catalog
    ADD CONSTRAINT item_catalog_slug_key UNIQUE (slug);
 L   ALTER TABLE ONLY public.item_catalog DROP CONSTRAINT item_catalog_slug_key;
       public         	   joomart2k    false    224            ?           2606    17173 $   item_category item_category_name_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.item_category
    ADD CONSTRAINT item_category_name_key UNIQUE (name);
 N   ALTER TABLE ONLY public.item_category DROP CONSTRAINT item_category_name_key;
       public         	   joomart2k    false    220            ?           2606    17171     item_category item_category_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.item_category
    ADD CONSTRAINT item_category_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.item_category DROP CONSTRAINT item_category_pkey;
       public         	   joomart2k    false    220            ?           2606    17175 $   item_category item_category_slug_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.item_category
    ADD CONSTRAINT item_category_slug_key UNIQUE (slug);
 N   ALTER TABLE ONLY public.item_category DROP CONSTRAINT item_category_slug_key;
       public         	   joomart2k    false    220            ?           2606    17186    item_product item_product_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.item_product
    ADD CONSTRAINT item_product_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.item_product DROP CONSTRAINT item_product_pkey;
       public         	   joomart2k    false    222            ?           2606    17188 "   item_product item_product_slug_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.item_product
    ADD CONSTRAINT item_product_slug_key UNIQUE (slug);
 L   ALTER TABLE ONLY public.item_product DROP CONSTRAINT item_product_slug_key;
       public         	   joomart2k    false    222            ?           2606    17240 (   thumbnail_kvstore thumbnail_kvstore_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.thumbnail_kvstore
    ADD CONSTRAINT thumbnail_kvstore_pkey PRIMARY KEY (key);
 R   ALTER TABLE ONLY public.thumbnail_kvstore DROP CONSTRAINT thumbnail_kvstore_pkey;
       public         	   joomart2k    false    226            }           1259    17145    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         	   joomart2k    false    207            ?           1259    17067 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         	   joomart2k    false    209            ?           1259    17068 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         	   joomart2k    false    209            x           1259    17053 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         	   joomart2k    false    205            ?           1259    17083 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         	   joomart2k    false    213            ?           1259    17082 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         	   joomart2k    false    213            ?           1259    17097 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         	   joomart2k    false    215            ?           1259    17096 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         	   joomart2k    false    215            ?           1259    17139     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         	   joomart2k    false    211            ?           1259    17158 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public         	   joomart2k    false    218            ?           1259    17135 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         	   joomart2k    false    217            ?           1259    17136 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         	   joomart2k    false    217            ?           1259    17232 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         	   joomart2k    false    225            ?           1259    17231 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         	   joomart2k    false    225            ?           1259    17218    item_catalog_name_b2b30285_like    INDEX     l   CREATE INDEX item_catalog_name_b2b30285_like ON public.item_catalog USING btree (name varchar_pattern_ops);
 3   DROP INDEX public.item_catalog_name_b2b30285_like;
       public         	   joomart2k    false    224            ?           1259    17219    item_catalog_slug_315e24b5_like    INDEX     l   CREATE INDEX item_catalog_slug_315e24b5_like ON public.item_catalog USING btree (slug varchar_pattern_ops);
 3   DROP INDEX public.item_catalog_slug_315e24b5_like;
       public         	   joomart2k    false    224            ?           1259    17220 !   item_category_catalog_id_ac7eb31a    INDEX     a   CREATE INDEX item_category_catalog_id_ac7eb31a ON public.item_category USING btree (catalog_id);
 5   DROP INDEX public.item_category_catalog_id_ac7eb31a;
       public         	   joomart2k    false    220            ?           1259    17189     item_category_name_d87a72f6_like    INDEX     n   CREATE INDEX item_category_name_d87a72f6_like ON public.item_category USING btree (name varchar_pattern_ops);
 4   DROP INDEX public.item_category_name_d87a72f6_like;
       public         	   joomart2k    false    220            ?           1259    17190     item_category_slug_088cc079_like    INDEX     n   CREATE INDEX item_category_slug_088cc079_like ON public.item_category USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public.item_category_slug_088cc079_like;
       public         	   joomart2k    false    220            ?           1259    17199 !   item_product_category_id_11b3e8aa    INDEX     a   CREATE INDEX item_product_category_id_11b3e8aa ON public.item_product USING btree (category_id);
 5   DROP INDEX public.item_product_category_id_11b3e8aa;
       public         	   joomart2k    false    222            ?           1259    17196    item_product_name_c1c48e19    INDEX     S   CREATE INDEX item_product_name_c1c48e19 ON public.item_product USING btree (name);
 .   DROP INDEX public.item_product_name_c1c48e19;
       public         	   joomart2k    false    222            ?           1259    17197    item_product_name_c1c48e19_like    INDEX     l   CREATE INDEX item_product_name_c1c48e19_like ON public.item_product USING btree (name varchar_pattern_ops);
 3   DROP INDEX public.item_product_name_c1c48e19_like;
       public         	   joomart2k    false    222            ?           1259    17198    item_product_slug_b1d755fa_like    INDEX     l   CREATE INDEX item_product_slug_b1d755fa_like ON public.item_product USING btree (slug varchar_pattern_ops);
 3   DROP INDEX public.item_product_slug_b1d755fa_like;
       public         	   joomart2k    false    222            ?           1259    17241 #   thumbnail_kvstore_key_3f850178_like    INDEX     t   CREATE INDEX thumbnail_kvstore_key_3f850178_like ON public.thumbnail_kvstore USING btree (key varchar_pattern_ops);
 7   DROP INDEX public.thumbnail_kvstore_key_3f850178_like;
       public         	   joomart2k    false    226            ?           2606    17062 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       	   joomart2k    false    205    209    2940            ?           2606    17057 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       	   joomart2k    false    207    209    2945            ?           2606    17048 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       	   joomart2k    false    205    203    2935            ?           2606    17077 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       	   joomart2k    false    207    213    2945            ?           2606    17072 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       	   joomart2k    false    211    213    2953            ?           2606    17091 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       	   joomart2k    false    2940    215    205            ?           2606    17086 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       	   joomart2k    false    215    2953    211            ?           2606    17159 @   authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id;
       public       	   joomart2k    false    218    2953    211            ?           2606    17125 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       	   joomart2k    false    203    2935    217            ?           2606    17130 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       	   joomart2k    false    2953    211    217            ?           2606    17213 B   item_category item_category_catalog_id_ac7eb31a_fk_item_catalog_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.item_category
    ADD CONSTRAINT item_category_catalog_id_ac7eb31a_fk_item_catalog_id FOREIGN KEY (catalog_id) REFERENCES public.item_catalog(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.item_category DROP CONSTRAINT item_category_catalog_id_ac7eb31a_fk_item_catalog_id;
       public       	   joomart2k    false    224    220    2999            ?           2606    17191 B   item_product item_product_category_id_11b3e8aa_fk_item_category_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.item_product
    ADD CONSTRAINT item_product_category_id_11b3e8aa_fk_item_category_id FOREIGN KEY (category_id) REFERENCES public.item_category(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.item_product DROP CONSTRAINT item_product_category_id_11b3e8aa_fk_item_category_id;
       public       	   joomart2k    false    2983    222    220            W      x?????? ? ?      Y      x?????? ? ?      U   ?  x?]?Mn?0??}
NP????{?.+U(X4J
8is?????&??$?<O?t??P?]W???qz??-?W}E???}@?O????p?8~??!?8?_T??f?Sݦ?????(?L~???H????H?J??y?P?$?xG?u?]??h?|?y?"1zC?ʗ?Ĭ2$(??:'Z?"q?Æ2-3??l02??r??PJ2?;???©?????s???8?-/0????,e?#???%??N??V???
??I?i??܎B?o_???s?&?t>	$?? Őcm?}??S????L??T^???[???T[???|???????[p?6?Z???????q???֧????[ͭG?͟??H?e򵩽ə???2??^??D?~ys???????צ??$U???%W?4%?H??1^??J???u???w?H??w6F<?!????Ǖ?X?????izVE?i|??G 4?3????{?ϾY?      [   ?   x?3?,H?NI3?/?H425S124300P	0	5
?21*q5NS?N???4**?ɲM???s-2??,L+??wr?J	?v??w?L
,̷?4202?50?5?P00?25?22?307513?60?,?LL???????`R/9?(S????R????????+F??? >W.k      ]      x?????? ? ?      _      x?????? ? ?      b      x?????? ? ?      a   w  x?u?MO?0@??_aqEX3???VVmO+q@??r?6?D6U?????NL??-彌???W@W4pbJ,?<I?K???Sޟ??x؏????EӶ??H????^?]:8??U?f????%9o"G*0???ovK?' 9K???;???M?k^;,????jۏ]>??/k?? 1???f?	???hH??????V?<??Og/xX??'?Т???~??\?<?y?F?'s??ݏʿ?pL??[G???}n?????_M?k͔ L;D???????_?L?/l??d???ߥ???\+lQ?R?	?A ??Ʀ??z????NCSS??ʡa?\?{??????	?A??cA????,???3???????>???e6??;??      S   ?   x?]?K?0Dמ? R?waZ????Q? z{?T ?ƚ7??l?){???(iE?qL2?^q???"#?d?U?A???lщ"'?rvpޜ1I??lP2'\???5?k???Q????'?????Y%1?i}*3j????????7??Ko      Q   :  x???ݎ?0F??S????3?%?R?r??X̂Ym޾?d?D??? $r??ߌ??ۇp?TB@??g?
	??o?~~?p??2?~??????M0.(??V?i?܇?Bx d?A?b???mm?z?ɵ??2)j???2???????Kˉ;??????xգ????q?^???蠜
?C??6Mp?ק֜us񮉑]??K}?~Us???/?7]9F?TrQչa?M??;vn???^w?S????_UH?N?.zs?S|?θvSC?????a????
?C(?8?v?9䏎?La	?Ž?m??L?uC4[D??}vc8%????HX??,??R>L??&?qJ????G??i2???Ղ??<?T1???9??:? ????K?:Nњ??R??Σ???4?p.֊Tր???P:ҟׇ?,?#??zM;?3???Nn|q[?*?"?????m!??:??????@? 
?ɢ"??x??T?הFN?????m{??aɵ"
,?Z?)U5?D?L?'?k??E?f??4-???Z?Y2W ?4r(?p???}?Z?9??????~???,4?r      i   	  x???r?0  г|E??? 7?,Z???lb"R	K?z?C??K^?*?k?ږLj???ZM-
?պ???????E{?vt?Z5??L?G??m¥S?o?G?????^?????Sf4K?2??'???Q5´??_?`I???????1?XM̞I???/q?<?y?O??7?q?>$????\r?_??wA?b?L????G?D??_??(05?(l&?Q?<???=?P??LYq?]?-?XA %?"?>?F? Jk??p?}E?[???_?      h     x???MN?0???)z?	m)?]B?"!`?d9??u?d*????? $T6???q??ݱ????????XZb??:??8?N??N?jб?e)?Uy3???M???%??9?????;??????W?{???.&?z????{z???-??
m?>a??@(Y?eρ???;??H?kea??mb?-^?C?Q??%d+t?o?ς#q;???a?-?k2?U?Z????94g:?g?]?d ?@?u?jh?????OS???E?\ΦmrO?? ֗      d   ?   x?M?QJ?0??'???ij??k?uai?`???$4??^B?????⍶[?????|L?Sp?7=*۽?ȳ<??Q????"vF?{kЃ??~k??iߡw?x=???DI?h???Ai?R?1?????g4?rYC?n???F?{??$??MU^?????%vo??h^??sQsp3?x?k^W??N?.*?????=|??????s?]??yl<@E?cB??d      f   ?  x??V?N?F?O1wm???Iw?"???"??VbQ4?O???3?}??oRU??ݫ?@?F????@?(bϙ?????s?T?M"??<<}??P??s!u??v??_?zY???
?vd%d_	iI?Rں??DJNe??>??T???(?|?F??8????k??ޗ??a?Lck"]?^F?????}Q?Y??*?Mp?/\?$D??Y??	,\ۄ
?F?Iy-??+[7?(?"?"]GqSQ?d!.??????k?+??ME?V??Ź,??X??0Z?Ij???/?  ???̩?Ò?,G??(???<?0?\?{1+d?rU9G???uH?}n \?\?n?m0?׻*ǔȒ??KU?? ?4??itm??ce??????1eR??wfN%k??vu6??U֤MR?C?????0<>l953ړ\oKW??x??????b???k??!??*??a?AЫ{l??^x,??I??G??h4???JGǭ?`?s?t???h???͉??;ԛ??KY?????m?@7G???ѝ03q?SkT??ҡz/v̦[6????L??v???xQPR[?U??7+e_?v?`?Q???]??)XK?Ւ?sbU.Y?P?q?M{?l??	Q(MM%P???uP_l}?ՕL>@Hmk???H|(?.???;n??L?-k??6G???<???)?????CU?(?????7?? ?\???q??9??4????8?W=?e?a`??? ?f+F,???r!??^\.<|0???w?Ǩ?C??;?QQ4? %? ?s?}???[?D?H-J#n?? :?]?aǿ???????4̖Æ??R?????d2???"??S*|??n?+(?LY?Ў"??1#???Q(|???x??\??????? ?ljSbb'ЮT?az?7?-?(1??0?[/d???	?A?????n???fө@?pK?5??F?	????ܐ??@Y? ?_uȞ uKWS	H<`k??/??t??J`M`Z"	???J?.?[>s
?????????x??3??~4bn???Z:<b??`Ի"*??N?.{??œe??x???2???Q?F#?]-d??go6???51֞?6EQ???H???[?GIS??1x+?hHg?&?j?f?Ҍ|t?{???$?C9???8??9?*)63
*?ᅿ??^N2????	K????Lx?e????H{?????u?????$F??7-?>???*??S?b?b?o$??R???'p??3U??X?P???cDh^IUd?s?t?DB?	?\j??i?Yr??So?o?y???}׮??????a W???En)??/Թ?u^ ???;L?u?-?a?????O????o?O???????~?6??7~?	'???c??=M??N?????^b?`T????5?V?????m????(WNGu>??ήi???N??????Sp*?i?WRɑ??f?W:??)?? NF{!u?Q8?V?{????_8!?      j   u  x??Y??۶?\?}OX ???N?N?i?I?q;r?? :??q#?b?u??,u׎]I?|`}?[R:???{x??w??????~???Z????R>|0`r
?ep?	?4??Ŋ????=??Ff?>+|??n9????~?]?C???*??_ޮ??????n??}?|v8???É?o??????M[??p??Ǜ????????????տ??1?/?????˳???'??l??8i?? X???Mɣ???˭?S????T??6s???rB5\?ܼ??(???K)?w??@X??R??t?H?|Fd+?Fs??_?M	???_??7??q????a[6??Ӈ?????C?i?[ﵠ2UE	???]'?S]3FK??9?l9:,AL????̡i???{?uǄ ???D?-MH
?4?FH1??b6??uR??o??̎???h?	õ/-?ә?)???u?Kux?Kg??f????&?kR?Y/%2Q?3(??SӘZ̆r????K?K?????P?%6~?h???T?C??KTCI?jB??J???7? ?R?w{>???Cׄ??{?????????t??(?2?:?!?b???U3E}q???bM֌??9?????*?&T l?3Y?j?h??_?~?Q??T?#Lb9%i?????	6J.?4?ֆ???C??׻??`?gUrt???W??B?)f???+?t??M?;?ѹ?9?.ǈ Q;e Eŗ ??+?(~??X????rBKB?r?l??21?T3Q?@k???C?OW??n???T?????v?Ẽ??t+uz???Y?_?HqB??U!??xYK???I???8 ?P??+D??????Ԝ?!????k"gM?er?wѦ~L?Q???T???H?Xr?VQ=??(V???????k?b??J??U3_??@E?
*???V֟F9ig4?\???w`HZ???P??4VR?"??J?N?hu1?)?QP5??:Z??l,?렊6ȮF(r5??*?
`?@?첦uw???^w??a????.dP?*8D?!???ܗ?ǯ>'?#???l̬;ٙX?Ѿ? ϑ???Ɛ$C?5??;uM??????9??ȏ?????????@9&vA羘EG?R??Z?K?O??픝a()\g?$S?-??????ꝋNu??E?+???5V???ׅ?U4K ?E?gI??}??p??~"?c?-fc?>1?W??		?궳R2f?X???
?%V???ݻ??__?~^?????>n?[??P????????	??m??{???e???\k?9k????@?Q}\?Z??ˉ?????g_???WpGR}b ʜ?Q
U?(?ET"???????????+z???n?j??????x얆u?#?p??Θ?]??c	/?^??l????O????N4%??_c?l????X????E????S? %j??*!Տ?t????r<?1?07nq???wﻃ??~}?s??n?gwN?????ѷ:%?|{??~j?????[?w?ҹ????ܬ?$uUZ?j+2???.X%??#?0Ec?2?????2ck)B???N?؞k??(\??X?׹ Q?@??IAV?(?=`??&????a???m?'QW???n??y{?u??_j5?}ٯ??n?+r??_p]Jo@_j???s???j2?O㪏??^M ?|?H?A?Y3XH???<͛?شUP???:??Ӓ/)ڔ?M??????gw????>??ub?>?\?k?^E??uIU*?b6??65?|w??A???;???m?]g1t???yӝv??^&?Ys??y?)c???V??Td????zL??Λ????0??LŖ??y?2?tЄ)?>?"????z?՘p?Az9?j ?
 Q6i??Z?	??{p????D???&?H?ɶ?}Alq???5??M?h?%?B??ri???&e?e?q??tǏ?c??l,U????gϞ?
??h^     