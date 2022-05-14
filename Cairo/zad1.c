/* ***************************************************************************

Napisz program z procedurą / metodą rysującą choinkę zawartą w prostokącie od (0, 0) do (50, 100). Najprościej zrobić to tak, jak rysują dzieci w przedszkolu, trzy częściowo nakładające się na siebie zielone trójkąty i pod nimi mały brązowy prostokąt jako pień. Pamiętaj, że zero układu współrzędnych jest w lewym górnym rogu kanwy. Procedura ta powinna brać ctx, czyli kontekst graficzny, jako swój jedyny argument.

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
    surf = cairo_image_surface_create(CAIRO_FORMAT_RGB24, 50, 100);
    cairo_t * ctx = cairo_create(surf);
    
    rysuj_choinke(ctx);

    cairo_surface_write_to_png(surf, "zad1.png");
    cairo_surface_destroy(surf);

    return 0;
}
