.class Lcom/ubix/ssp/ad/e/b0/c$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/b0/c;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/SurfaceTexture;

.field final synthetic b:Lcom/ubix/ssp/ad/e/b0/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/c;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/c$f;->b:Lcom/ubix/ssp/ad/e/b0/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/b0/c$f;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$f;->b:Lcom/ubix/ssp/ad/e/b0/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/c$f;->a:Landroid/graphics/SurfaceTexture;

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/b0/b;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/b0/c$f;->b:Lcom/ubix/ssp/ad/e/b0/c;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/b0/b;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/b0/c;->a(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
