# Gimnasio DB

Proyecto universitario de bases de datos relacionales. Modela la operación básica de un gimnasio: clientes, tipos de membresía, métodos de pago y los pagos asociados a cada membresía.

Motor: **SQL Server** (desarrollado y probado con SQL Server Management Studio).

## Alcance actual

Esta es la base preliminar del proyecto: solo estructura de tablas (`CREATE TABLE`), sin datos de prueba ni diagrama ER todavía. El objetivo es tener algo funcional sobre lo cual seguir construyendo.

## Estructura

```
scripts/
  01_create_database.sql   -- crea la base de datos GimnasioDB
  02_create_tables.sql     -- crea las tablas: Clientes, TiposMembresia,
                             MetodosPago, Membresias, Pagos
```

## Cómo ejecutarlo

1. Abre SQL Server Management Studio (SSMS) y conéctate a tu instancia local.
2. Ejecuta `scripts/01_create_database.sql`.
3. Ejecuta `scripts/02_create_tables.sql`.

## Modelo (resumen)

- **Clientes** — datos personales y de contacto de cada cliente registrado.
- **TiposMembresia** — catálogo de membresías disponibles (nombre, duración en días, precio).
- **MetodosPago** — catálogo de métodos de pago aceptados.
- **Membresias** — relaciona un cliente con un tipo de membresía y sus fechas de vigencia.
- **Pagos** — registra los pagos realizados por cada membresía, incluyendo método de pago y monto.

## Próximos pasos

- Diagrama entidad-relación (ER).
- Datos de prueba (`INSERT`) para poder probar consultas.
- Consultas y reportes (asistencia, membresías por vencer, ingresos por método de pago, etc.).
- Posibles ampliaciones: empleados/instructores, clases, asistencia.
