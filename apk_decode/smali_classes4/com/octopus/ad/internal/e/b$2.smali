.class Lcom/octopus/ad/internal/e/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/b;->b(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/octopus/ad/internal/e/b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/b;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/b$2;->b:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/e/b$2;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$2;->b:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->b(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$2;->b:Lcom/octopus/ad/internal/e/b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->n()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$2;->b:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/e/b;->b(Lcom/octopus/ad/internal/e/b;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/octopus/ad/internal/e/b$2$1;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/e/b$2$1;-><init>(Lcom/octopus/ad/internal/e/b$2;Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1, v1}, Lcom/octopus/ad/d/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/octopus/ad/d/d$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
