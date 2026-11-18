-- Cloud Provider Analytics | Segundo parcial
-- Ejecutar en una base AstraDB que ya tenga el keyspace finops.
-- El notebook 06 se encarga de cargar el mart desde Gold.

CREATE TABLE IF NOT EXISTS finops.org_daily_usage_by_service (
    org_id text,
    event_date date,
    service text,
    total_events bigint,
    total_cost_usd decimal,
    negative_cost_events bigint,
    incomplete_usage_events bigint,
    requests double,
    carbon_kg double,
    PRIMARY KEY (org_id, event_date, service)
);

-- Consulta 1. Uso y costo de una organización en un rango de fechas.
SELECT org_id, event_date, service, total_events, total_cost_usd,
       requests, carbon_kg
FROM finops.org_daily_usage_by_service
WHERE org_id = 'org_ofqewaou'
  AND event_date >= '2025-07-20'
  AND event_date <= '2025-07-26';

-- Consulta 2. Detalle de una organización, un día y un servicio.
-- Resultado verificado: 238 solicitudes y 0,051855 kg de carbono.
SELECT org_id, event_date, service, total_events, total_cost_usd,
       requests, carbon_kg
FROM finops.org_daily_usage_by_service
WHERE org_id = 'org_ofqewaou'
  AND event_date = '2025-07-23'
  AND service = 'analytics';
