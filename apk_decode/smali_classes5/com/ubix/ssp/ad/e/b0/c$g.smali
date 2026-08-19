.class Lcom/ubix/ssp/ad/e/b0/c$g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/b0/c;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/b0/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/c$g;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c$g;->a:Lcom/ubix/ssp/ad/e/b0/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/c;->a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/ubix/ssp/ad/e/b0/c;->onError(Landroid/media/MediaPlayer;II)Z

    return-void
.end method
