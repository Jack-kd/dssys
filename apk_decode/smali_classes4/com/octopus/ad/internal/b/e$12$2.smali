.class Lcom/octopus/ad/internal/b/e$12$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/e$12;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e$12;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->o(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->o(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x138e5

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "onBitmapLoadFailed"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->m(Lcom/octopus/ad/internal/b/e;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/b/e$12$2$1;-><init>(Lcom/octopus/ad/internal/b/e$12$2;Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Lcom/octopus/ad/d/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/octopus/ad/d/d$a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
