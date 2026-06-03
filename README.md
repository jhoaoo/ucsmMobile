# SM-HUB · UCSM Mobile

Plataforma universitaria móvil que centraliza el acceso a contenido académico — documentos, videos, noticias y métricas de progreso — en una sola aplicación con soporte offline.

**Demo en vivo →** [sm-hub-ac739.web.app](https://sm-hub-ac739.web.app)

---

## Vista general

SM-HUB nació de la necesidad de tener un punto de acceso único para recursos universitarios. La app permite consultar material académico, reproducir videos, visualizar PDFs y seguir el progreso personal, todo sin depender de conexión constante a internet.

---

## Stack

| Capa | Tecnología |
|---|---|
| UI | Flutter · Dart · Custom GLSL Shaders |
| Animaciones | flutter_animate · page_transition |
| Navegación | go_router 12 |
| Estado | Provider · RxDart 0.27 |
| Auth | Firebase Auth · Google Sign-In |
| Base de datos | Firebase Firestore |
| Almacenamiento | Firebase Storage |
| Persistencia local | sqflite |
| Multimedia | video_player · pdfx |
| Gráficas | fl_chart |
| Archivos | image_picker · file_picker |
| Monitoreo | Firebase Performance |
| Fuentes / íconos | google_fonts · font_awesome_flutter |

---

## Arquitectura

```
lib/
├── core/
│   ├── router/          # go_router — rutas declarativas
│   ├── theme/           # tokens de diseño, shaders
│   └── utils/           # helpers globales
├── data/
│   ├── local/           # sqflite — persistencia offline
│   ├── remote/          # Firebase Firestore + Storage
│   └── repositories/    # abstracción local ↔ remoto
├── domain/
│   ├── models/          # entidades Dart tipadas
│   └── providers/       # Provider + RxDart BehaviorSubject
└── presentation/
    ├── screens/         # pantallas por módulo
    └── widgets/         # componentes reutilizables
```

---

## Decisiones técnicas

**Offline-first** — Los datos se persisten en sqflite y se sincronizan con Firestore cuando hay conectividad. El usuario no pierde contexto entre sesiones.

**Streams reactivos con RxDart** — Se usa `BehaviorSubject` para mantener estado de contenido multimedia sin provocar rebuilds innecesarios en widgets no relacionados.

**Custom GLSL Shaders** — Las animaciones de interacción se implementan con shaders en lugar de animaciones por CPU, manteniendo 60fps en dispositivos de gama media.

**Repository pattern** — La capa de datos abstrae la fuente (local o remota), permitiendo cambiar proveedores sin tocar la lógica de negocio ni la UI.

---

## Funcionalidades

- Autenticación con Email y Google Sign-In
- Reproducción de videos con `video_player`
- Visor de documentos PDF con `pdfx`
- Dashboard de progreso con gráficas `fl_chart`
- Carga de archivos e imágenes
- Modo offline con sincronización automática
- Navegación declarativa con guards de autenticación

---

## Instalación local

```bash
# Clonar repositorio
git clone https://github.com/jhoaoo/ucsmMobile.git
cd ucsmMobile

# Instalar dependencias
flutter pub get

# Ejecutar en modo debug
flutter run
```

> Requiere Flutter 3.x y una cuenta de Firebase configurada. El archivo `google-services.json` no está incluido por razones de seguridad.

---

## Capturas

> *Próximamente*

---

## Autor

**Jhoaoo Sebastian Llerena Quispe**
Estudiante de Ingeniería de Sistemas

[LinkedIn](https://www.linkedin.com/in/jhoaoo-llerena-quispe-78a602331/) · [GitHub](https://github.com/jhoaoo) · [jhoaoollerena@gmail.com](mailto:jhoaoollerena@gmail.com)
