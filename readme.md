# Sistema de Registro de Vacunación de Mascotas

Base de datos relacional MySQL diseñada para gestionar el registro de vacunación de mascotas, incluyendo información de dueños y seguimiento de vacunas.

## Características

- Registro de dueños y sus mascotas
- Catálogo de vacunas disponibles
- Seguimiento histórico de vacunaciones
- Consultas para análisis de datos

## Estructura de la Base de Datos

### Tablas
- `Dueños`: Almacena información de propietarios y sus mascotas
- `Vacunas`: Catálogo de vacunas disponibles
- `Vacunacion`: Registro histórico de vacunas aplicadas

### Diagrama ER
[Puedes agregar aquí un diagrama de la base de datos]

## Consultas de Ejemplo

El sistema incluye consultas para:
- Listado completo de vacunas por mascota
- Identificación de mascotas sin vacuna específica
- Estadísticas de vacunación
- Conteo total de vacunas aplicadas

## Instalación

1. Crear la base de datos:
```sql
CREATE DATABASE RegistroVacunacion;
Ejecutar los scripts en el siguiente orden:
- `schema.sql`
- `seed-data.sql`


## Tecnologías Utilizadas
-`MySQL`

