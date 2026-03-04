create table dw_sae.ticketings
(
    id                     bigserial
        primary key,
    mongo_id               text not null
        unique,
    fichero_id             text not null,
    fecha_iso              date not null,
    cod_concesion          text not null,
    linea                  text not null,
    nom_linea              text,
    ruta                   text,
    nom_ruta               text,
    destino                text,
    servicio               text not null,
    id_viaje               text not null,
    sentido                text,
    expedicion             text not null,
    servicio_conductor     text,
    codigo_conductor       text,
    nombre_conductor       text,
    vehiculo               text,
    matricula              text,
    origen                 text,
    nombre_parada_origen   text,
    zona_tarifaria_origen  text,
    poblacion_destino      text,
    instante_operacion_raw text,
    instante_operacion_ts  timestamp with time zone,
    serie                  text,
    numero                 text,
    operacion              text,
    operacion_descripcion  text,
    titulo                 text,
    importe_raw            text,
    viajeros_raw           text,
    transbordo             text,
    conv_viajeros          integer,
    conv_importe           numeric(12, 4),
    etl_loaded_at          timestamp with time zone default now()
);

alter table dw_sae.ticketings
    owner to etl_user;

grant select on dw_sae.ticketings to metabase;

