# 02. Modelo de datos de transporte

Este resumen se basa en las DDL del repositorio `ddls-db` (esquema `dw_sae`).

## Entidades principales

- `expediciones`: cabecera de cada viaje/servicio de autobus
- `expediciones_detalle`: detalle por parada de cada expedicion
- `expediciones_viajeros`: resumen de viajeros y ventas por expedicion
- `ticketings`: operaciones de validacion/venta
- `recaudaciones`: importes agregados por linea/conductor/turno
- `almex_contadores`: conteos de pasajeros de contadores automaticos
- `v_almex_contadores_clean`: vista de limpieza para analitica

## Diagrama conceptual (simplificado)

```text
expediciones (1) ---- (N) expediciones_detalle
      |                          |
      |                          +--> paradas, tiempos de paso
      |
      +---- (1) ---- (1/N) expediciones_viajeros
      |
      +---- (1) ---- (N) ticketings

linea + fecha ----> recaudaciones
linea + viaje + parada ----> almex_contadores / v_almex_contadores_clean
```

## Conceptos de negocio

### Expedicion
Un servicio concreto de bus en una fecha y linea, identificado por campos como `num_expedicion`, `id_viaje`, `fecha_iso`, `linea`.

### Linea
Agrupador operativo/comercial del servicio (`linea`, `nom_linea`). Suele ser dimension principal para comparativas.

### Parada
Punto del recorrido en `expediciones_detalle` (`parada`, `nom_parada`, `orden`) y en contadores (`gtfs_stop_code`, `stop_code`).

### Contadores de viajeros
Datos de sensores embarcados (`stop_in`, `stop_out`, `passengers`) en `almex_contadores`. La vista `v_almex_contadores_clean` filtra valores fuera de rango.

### Ticketing
Eventos transaccionales de validacion/venta (`operacion`, `titulo`, `conv_viajeros`, `conv_importe`) con marca temporal `instante_operacion_ts`.

### Recaudacion
Importes agregados por linea y periodo (`conv_importe_total_sum`, `conv_importe_billetes_sum`, etc.) en `recaudaciones`.

## Claves de union recomendadas (conceptuales)

- nivel expedicion: `fecha_iso` + `linea` + `id_viaje` (+ `num_expedicion` cuando exista)
- nivel dia/linea: `fecha_iso` + `linea`
- nivel parada: `fecha_iso/day` + `linea/line_code` + `parada/stop_code`

## Nota sobre vistas BI adicionales

En este workspace se encuentra `v_almex_contadores_clean`. Otras vistas mencionadas en el contexto (como `v_expediciones_ok` o `v_paternabus_clean`) pueden existir en otros entornos del DW y se pueden incorporar como capa semantica adicional.
