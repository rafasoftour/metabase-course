create table dw_sae.recaudaciones
(
    id                           bigserial
        primary key,
    mongo_id                     text not null
        unique,
    fichero_id                   text not null,
    fecha_iso                    date not null,
    linea                        text not null,
    id_conductor                 text,
    conductor                    text,
    vehiculo                     text,
    horario                      text,
    horas_raw                    text,
    minutos_raw                  text,
    conv_horas                   integer,
    conv_minutos                 integer,
    billetes_sum_raw             text,
    paquetes_sum_raw             text,
    validaciones_sum_raw         text,
    validaciones_emv_sum_raw     text,
    validaciones_qr_sum_raw      text,
    transbordos_sum_raw          text,
    viajeros_sum_raw             text,
    recargas_sum_raw             text,
    importe_billetes_sum_raw     text,
    importe_paquetes_sum_raw     text,
    importe_transbordos_sum_raw  text,
    importe_recargas_sum_raw     text,
    importe_total_sum_raw        text,
    estado_descarga              text,
    conv_billetes_sum            integer,
    conv_paquetes_sum            integer,
    conv_validaciones_sum        integer,
    conv_validaciones_emv_sum    integer,
    conv_validaciones_qr_sum     integer,
    conv_transbordos_sum         integer,
    conv_viajeros_sum            integer,
    conv_recargas_sum            integer,
    conv_importe_billetes_sum    numeric(12, 4),
    conv_importe_paquetes_sum    numeric(12, 4),
    conv_importe_transbordos_sum numeric(12, 4),
    conv_importe_recargas_sum    numeric(12, 4),
    conv_importe_total_sum       numeric(12, 4),
    etl_loaded_at                timestamp with time zone default now()
);

alter table dw_sae.recaudaciones
    owner to etl_user;

grant select on dw_sae.recaudaciones to metabase;

