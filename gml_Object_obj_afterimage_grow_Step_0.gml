if (target != -4 && i_ex(target))
{
    x = target.x;
    y = target.y;
}

image_alpha -= fade;
image_xscale += xrate;
image_yscale += yrate;

if (image_alpha < 0)
    instance_destroy();

if (destroytime > -1)
    destroytime--;

if (destroytime == 0)
    instance_destroy();
