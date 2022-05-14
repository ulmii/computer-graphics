/* ***************************************************************************

Rozszerz powyższy program tak, aby kilkukrotnie wywoływał procedurę rysującą choinkę, przeplatając te wywołania modyfikacjami macierzy transformacji układu współrzędnych użytkownika. Końcowym efektem powinno być kilka choinek różnej wysokości w różnych miejscach rysunku.

*************************************************************************** */


#include <stdio.h>

#include <cairo.h>
#include <cairo-ps.h>

void rysuj_choinke(cairo_t * ctx)
{
    cairo_pattern_t * pat;
    
    cairo_set_source_rgb(ctx, 0.0, 1.0, 0.0);
    
    cairo_move_to(ctx, 0, 30);
    cairo_line_to(ctx, 25, 0);
    cairo_line_to(ctx, 50, 30);
    cairo_close_path(ctx);
    cairo_fill(ctx);

    cairo_move_to(ctx, 0, 50);
    cairo_line_to(ctx, 25, 20);
    cairo_line_to(ctx, 50, 50);
    cairo_close_path(ctx);
    cairo_fill(ctx);

    cairo_move_to(ctx, 0, 70);
    cairo_line_to(ctx, 25, 35);
    cairo_line_to(ctx, 50, 70);
    cairo_close_path(ctx);
    cairo_fill(ctx);

    cairo_move_to(ctx, 0, 70);
    cairo_line_to(ctx, 25, 35);
    cairo_line_to(ctx, 50, 70);
    cairo_close_path(ctx);
    cairo_fill(ctx);

    cairo_set_source_rgb(ctx, 0.54, 0.27, 0.07);
    cairo_move_to(ctx, 15, 100);
    cairo_line_to(ctx, 15, 70);
    cairo_line_to(ctx, 35, 70);
    cairo_line_to(ctx, 35, 100);
    cairo_close_path(ctx);
    cairo_fill(ctx);
}

int main(int argc, char * argv[])
{
    cairo_surface_t * surf;

    // raster 640 x 480 pikseli, zapisany potem na dysk w formacie PNG
    surf = cairo_image_surface_create(CAIRO_FORMAT_RGB24, 500, 500);
    cairo_t * ctx = cairo_create(surf);

    for(int i = 1; i < 5; i++) {
        cairo_translate (ctx, i * 50, i * 20);
        cairo_scale (ctx, (float) i / 2, (float) i / 2);
        rysuj_choinke(ctx);    
    }

    cairo_surface_write_to_png(surf, "zad2.png");
    cairo_surface_destroy(surf);

    return 0;
}
