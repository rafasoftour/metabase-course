create table dw_sae.expediciones
(
    id                      bigserial
        primary key,
    mongo_id                text not null
        unique,
    num_expedicion          text not null,
    fichero_id              text not null,
    fecha_iso               date not null,
    cod_concesion           text not null,
    linea                   text not null,
    nom_linea               text,
    ruta                    text,
    nom_ruta                text,
    destino                 text,
    tipo_dia                text,
    servicio                text not null,
    id_viaje                text not null,
    sentido                 text,
    servicio_conductor      text,
    conductor               text,
    nombre_conductor        text,
    vehiculo                text,
    matricula               text,
    hora_teor_raw           text,
    hora_real_raw           text,
    hora_teor_fin_raw       text,
    hora_real_fin_raw       text,
    d_hora_real_fin_raw     text,
    hora_teor_ts            timestamp with time zone,
    hora_real_ts            timestamp with time zone,
    hora_teor_fin_ts        timestamp with time zone,
    hora_real_fin_ts        timestamp with time zone,
    desfase_inicio_raw      text,
    conv_desfase_inicio     integer,
    desfase_teor_raw        text,
    conv_desfase_teor       integer,
    desfase_fin_raw         text,
    conv_desfase_fin        integer,
    t_cabecera_raw          text,
    conv_t_cabecera         integer,
    duracion_teorica_raw    text,
    conv_duracion_teorica   integer,
    duracion_real_raw       text,
    conv_duracion_real      integer,
    longitud_teorica_raw    text,
    conv_longitud_teorica   integer,
    longitud_efectiva_raw   text,
    conv_longitud_efectiva  integer,
    frecuencia_teorica_raw  text,
    conv_frecuencia_teorica integer,
    velocidad_teorica_raw   text,
    conv_velocidad_teorica  numeric(10, 4),
    velocidad_real_raw      text,
    conv_velocidad_real     numeric(10, 4),
    etl_loaded_at           timestamp with time zone default now()
);

alter table dw_sae.expediciones
    owner to etl_user;

grant select on dw_sae.expediciones to metabase;

