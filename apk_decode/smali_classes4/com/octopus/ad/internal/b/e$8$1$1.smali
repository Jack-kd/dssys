.class Lcom/octopus/ad/internal/b/e$8$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e$8$1;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/octopus/ad/internal/b/e$8$1;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e$8$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$8$1$1;->b:Lcom/octopus/ad/internal/b/e$8$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/e$8$1$1;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$8$1$1;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$8$1$1;->b:Lcom/octopus/ad/internal/b/e$8$1;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$8$1;->b:Lcom/octopus/ad/internal/b/e$8;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$8;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$8$1$1;->a:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$8$1$1;->b:Lcom/octopus/ad/internal/b/e$8$1;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$8$1;->b:Lcom/octopus/ad/internal/b/e$8;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$8;->b:Lcom/octopus/ad/internal/b/e;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->C(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ImageView;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$8$1$1;->b:Lcom/octopus/ad/internal/b/e$8$1;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$8$1;->b:Lcom/octopus/ad/internal/b/e$8;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$8;->b:Lcom/octopus/ad/internal/b/e;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->C(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ImageView;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$8$1$1;->b:Lcom/octopus/ad/internal/b/e$8$1;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$8$1;->a:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    const-string v1, "OctopusAd"

    .line 57
    .line 58
    const-string v2, "An Exception Caught"

    .line 59
    .line 60
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
