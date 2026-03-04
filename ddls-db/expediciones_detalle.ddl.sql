create table dw_sae.expediciones_detalle
(
    id                        bigserial
        primary key,
    mongo_id                  text    not null
        unique,
    num_expedicion            text    not null,
    fichero_id                text    not null,
    fecha_iso                 date    not null,
    cod_concesion             text    not null,
    linea                     text    not null,
    nom_linea                 text,
    ruta                      text,
    nom_ruta                  text,
    destino                   text,
    tipo_dia                  text,
    servicio                  text    not null,
    id_viaje                  text    not null,
    sentido                   text,
    servicio_conductor        text,
    conductor                 text,
    nombre_conductor          text,
    vehiculo                  text,
    matricula                 text,
    parada                    text    not null,
    nom_parada                text,
    orden                     integer not null,
    posicion                  integer,
    hora_teor_raw             text,
    hora_real_llegada_raw     text,
    hora_real_salida_raw      text,
    hora_teor_ts              timestamp with time zone,
    hora_real_llegada_ts      timestamp with time zone,
    hora_real_salida_ts       timestamp with time zone,
    desfase_horario_raw       text,
    t_parada_raw              text,
    t_puertas_raw             text,
    t_sig_parada_raw          text,
    distancia_sig_parada_raw  text,
    vel_teor_sig_parada_raw   text,
    vel_real_sig_parada_raw   text,
    conv_desfase_horario      integer,
    conv_t_parada             integer,
    conv_t_puertas            integer,
    conv_t_sig_parada         integer,
    conv_distancia_sig_parada integer,
    conv_vel_teor_sig_parada  numeric(10, 4),
    conv_vel_real_sig_parada  numeric(10, 4),
    etl_loaded_at             timestamp with time zone default now()
);

alter table dw_sae.expediciones_detalle
    owner to etl_user;

grant select on dw_sae.expediciones_detalle to metabase;

