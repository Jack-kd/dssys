.class public abstract Lcom/ubix/ssp/ad/e/b0/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field protected a:Landroid/graphics/SurfaceTexture;

.field protected b:Landroid/view/SurfaceHolder;

.field protected c:Landroid/os/HandlerThread;

.field protected d:Landroid/os/Handler;

.field protected e:Landroid/os/Handler;

.field protected f:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ubix/ssp/ad/e/b0/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->f:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract a(FF)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Lcom/ubix/ssp/ad/e/b0/a;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()J
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method
