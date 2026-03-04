create table dw_sae.expediciones_manuales
(
    id                  text      not null
        primary key,
    fichero_id          date      not null,
    fecha               timestamp not null,
    cod_concesion       text      not null,
    linea               text      not null,
    nom_linea           text,
    ruta                text,
    nom_ruta            text,
    destino             text,
    num_expedicion      text,
    servicio            text,
    id_viaje            text,
    sentido             text,
    conductor           text,
    nombre_conductor    text,
    vehiculo            text,
    matricula           text,
    hora_real           timestamp,
    hora_real_fin       timestamp,
    longitud_teorica_m  integer,
    longitud_efectiva_m integer,
    velocidad_real_kmh  numeric(6, 2),
    duracion_real       interval,
    created_at          timestamp default now(),
    fecha_iso           date
);

alter table dw_sae.expediciones_manuales
    owner to etl_user;

