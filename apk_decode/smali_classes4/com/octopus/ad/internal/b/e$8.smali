.class Lcom/octopus/ad/internal/b/e$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->b(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/octopus/ad/internal/b/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$8;->b:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/e$8;->a:Landroid/content/Context;

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
    .locals 0

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$8;->a:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/octopus/ad/internal/b/e$8$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/b/e$8$1;-><init>(Lcom/octopus/ad/internal/b/e$8;Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, v1}, Lcom/octopus/ad/d/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/octopus/ad/d/d$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
