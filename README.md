# Ray Tracing

A C++ ray tracing renderer that produces photorealistic images by simulating light rays.

<img width="1200" height="675" alt="first_render_high_def" src="https://github.com/user-attachments/assets/e5b397ae-bd6b-4539-9af1-e6ae2c4eb5da" />

## Features
Supports rendering
- Diffuse/matte materials
- Metals and reflections
- Glass and refractions

## Building

```bash
make
```

This compiles the source files and creates the `raytracer` executable.

## Running

```bash
make run
```

This runs the raytracer and outputs the rendered image to `image.ppm`.

## Other Commands

- `make clean` — Remove build artifacts
- `make rebuild` — Clean and rebuild everything

## Output

The renderer produces PPM (Portable Pixmap) format images, which can be viewed or converted with standard image tools.


-- Based on [_Ray Tracing in One Weekend_](https://raytracing.github.io/books/RayTracingInOneWeekend.html)
