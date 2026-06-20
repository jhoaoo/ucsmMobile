# UCSM Mobile · SM-HUB

Aplicación móvil universitaria desarrollada con **FlutterFlow** y exportada a **Flutter/Dart**, orientada a centralizar servicios, accesos e información útil para estudiantes de la Universidad Católica de Santa María.

> **Estado:** Proyecto académico / portafolio en desarrollo activo.

---

## Descripción

**SM-HUB** es una propuesta de aplicación móvil para mejorar la experiencia del estudiante universitario mediante una plataforma centralizada. El proyecto integra módulos informativos y funcionales como materiales, reclamos, eventos, perfil de usuario, accesos rápidos y servicios relacionados al menú universitario.

El objetivo principal es demostrar el desarrollo de una app móvil con enfoque real, combinando diseño visual en FlutterFlow, integración con Firebase y una estructura exportada en Flutter para control de versiones y mejora progresiva.

---

## Funcionalidades principales

### Usuario y autenticación

- Pantalla de autenticación UCSM.
- Perfil de usuario.
- Edición de perfil.
- Configuración de cuenta.

### Materiales académicos

- Visualización de materiales.
- Carga o subida de materiales.
- Organización de recursos para estudiantes.

### Reclamos y comunicación

- Módulo de reclamos.
- Base para registrar solicitudes o incidencias universitarias.

### Eventos

- Creación de eventos.
- Visualización de eventos del usuario.

### Accesos y servicios

- Accesos rápidos.
- Menú principal.
- Tarjetas de restaurante.
- Creación de restaurantes.
- Registro o administración de menús.

---

## Stack técnico

| Área | Tecnología |
|---|---|
| Desarrollo visual | FlutterFlow |
| Framework móvil | Flutter |
| Lenguaje | Dart |
| Backend | Firebase |
| Autenticación | Firebase Auth · Google Sign-In · Apple Sign-In |
| Base de datos | Cloud Firestore |
| Almacenamiento | Firebase Storage |
| Navegación | GoRouter |
| Estado / streams | Provider · RxDart |
| UI y componentes | Google Fonts · Font Awesome · FlutterFlow Theme |
| Archivos y multimedia | File Picker · Image Picker · PDFX · Video Player |
| Gráficos / visualización | fl_chart_flutter |
| Persistencia local | SharedPreferences · sqflite |

---

## Estructura general

```text
lib/
├── auth/                 # Autenticación y utilidades de usuario
├── backend/              # Configuración e integración con Firebase
├── flutter_flow/         # Tema, navegación, widgets y utilidades de FlutterFlow
├── home_pag/             # Pantalla principal
├── materials/            # Materiales y carga de recursos
├── reclaims/             # Reclamos o solicitudes
├── profile/              # Perfil, edición y configuración
├── events/               # Creación y visualización de eventos
├── links/                # Accesos rápidos
├── menu_f/               # Menú, restaurantes y gestión relacionada
├── index.dart            # Exportación de pantallas principales
└── main.dart             # Inicialización de Firebase, tema, rutas y app principal
```

---

## Pantallas principales

| Módulo | Pantallas |
|---|---|
| Inicio | Home / Home Test |
| Autenticación | Auth UCSM |
| Materiales | Materiales, subida de materiales |
| Reclamos | Reclamos |
| Perfil | Perfil, edición de perfil, configuración |
| Eventos | Crear evento, eventos del usuario |
| Accesos | Quick Access |
| Menú | Menú, card de restaurante, agregar menú, crear restaurante |

---

## Decisiones técnicas

### Desarrollo con FlutterFlow

El proyecto fue construido con FlutterFlow para acelerar el diseño visual y la generación de pantallas, manteniendo la posibilidad de exportar el código Flutter para versionarlo y mejorarlo desde GitHub.

### Firebase como backend

La app inicializa Firebase desde el arranque y está preparada para utilizar autenticación, almacenamiento y base de datos en la nube.

### Navegación con GoRouter

La navegación se gestiona mediante GoRouter, permitiendo organizar rutas entre módulos y pantallas principales.

### Soporte visual y multimedia

El proyecto incluye dependencias para imágenes, archivos, PDF, video, íconos, fuentes y gráficos, lo que permite ampliar la app hacia módulos más completos.

---

## Instalación local

```bash
git clone https://github.com/jhoaoo/ucsmMobile.git
cd ucsmMobile
flutter pub get
flutter run
```

> Requiere Flutter SDK compatible con Dart `>=3.0.0 <4.0.0` y configuración propia de Firebase.

---

## Configuración necesaria

Para ejecutar el proyecto correctamente, se debe configurar Firebase según la plataforma utilizada. Por seguridad, no se deben exponer públicamente archivos sensibles de configuración.

Archivos típicos a revisar:

```text
android/app/google-services.json
ios/Runner/GoogleService-Info.plist
lib/firebase_options.dart
```

---

## Roadmap

- Documentar el flujo completo de cada módulo.
- Agregar capturas de pantalla de la aplicación.
- Mejorar la descripción del modelo de datos en Firestore.
- Validar autenticación y permisos por tipo de usuario.
- Preparar una demo visual para portafolio.
- Optimizar estructura y limpieza del código exportado.

---

## Valor para portafolio

Este proyecto demuestra manejo de FlutterFlow, Flutter, Firebase, autenticación, navegación modular y construcción de una app móvil con enfoque universitario real.

---

## Autor

**Jhoaoo Sebastián Llerena Quispe**  
Estudiante de Ingeniería de Sistemas · UCSM  
Arequipa, Perú

[GitHub](https://github.com/jhoaoo) · [LinkedIn](https://www.linkedin.com/in/jhoaoo-llerena-quispe-78a602331/)