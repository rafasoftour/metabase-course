create table dw_sae.expediciones_viajeros
(
    id                  text      not null
        primary key,
    fichero_id          date      not null,
    fecha_iso           date      not null,
    fecha               timestamp not null,
    cod_concesion       text,
    n_linea             text,
    linea               text,
    ruta                text,
    nombre_ruta         text,
    num_expedicion      text,
    servicio            text,
    id_viaje            text,
    sentido             text,
    conductor           text,
    nombre_conductor    text,
    vehiculo            text,
    matricula           text,
    coche               text,
    hora_real           timestamp,
    hora_real_fin       timestamp,
    duracion_real       interval,
    viajeros            integer,
    ventas              numeric(12, 2),
    servicio_asignado   text,
    id_viaje_registrado text,
    p_servicio          text,
    p_linea             text,
    p_ruta              text,
    p_coche             text,
    viaje_linea         integer,
    p_id_viaje          text,
    h_ini               timestamp,
    h_fin               timestamp,
    h_ini_real          timestamp,
    h_fin_real          timestamp,
    created_at          timestamp default now()
);

alter table dw_sae.expediciones_viajeros
    owner to etl_user;

