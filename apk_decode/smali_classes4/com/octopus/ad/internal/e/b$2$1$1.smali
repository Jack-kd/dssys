.class Lcom/octopus/ad/internal/e/b$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/b$2$1;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/octopus/ad/internal/e/b$2$1;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/b$2$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/b$2$1$1;->b:Lcom/octopus/ad/internal/e/b$2$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/e/b$2$1$1;->a:Landroid/graphics/Bitmap;

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
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$2$1$1;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/e/b$2$1$1;->b:Lcom/octopus/ad/internal/e/b$2$1;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/octopus/ad/internal/e/b$2$1;->b:Lcom/octopus/ad/internal/e/b$2;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/octopus/ad/internal/e/b$2;->b:Lcom/octopus/ad/internal/e/b;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/octopus/ad/internal/e/b;->b(Lcom/octopus/ad/internal/e/b;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/octopus/ad/internal/e/b$2$1$1;->a:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/octopus/ad/internal/e/b$2$1$1;->b:Lcom/octopus/ad/internal/e/b$2$1;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/octopus/ad/internal/e/b$2$1;->b:Lcom/octopus/ad/internal/e/b$2;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/octopus/ad/internal/e/b$2;->a:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$2$1$1;->b:Lcom/octopus/ad/internal/e/b$2$1;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/octopus/ad/internal/e/b$2$1;->b:Lcom/octopus/ad/internal/e/b$2;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/octopus/ad/internal/e/b$2;->a:Landroid/widget/ImageView;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b$2$1;->a:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$2$1$1;->b:Lcom/octopus/ad/internal/e/b$2$1;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b$2$1;->b:Lcom/octopus/ad/internal/e/b$2;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b$2;->b:Lcom/octopus/ad/internal/e/b;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->b(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$2$1$1;->b:Lcom/octopus/ad/internal/e/b$2$1;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b$2$1;->b:Lcom/octopus/ad/internal/e/b$2;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b$2;->b:Lcom/octopus/ad/internal/e/b;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$2$1$1;->b:Lcom/octopus/ad/internal/e/b$2$1;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b$2$1;->b:Lcom/octopus/ad/internal/e/b$2;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b$2;->b:Lcom/octopus/ad/internal/e/b;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->b(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$2$1$1;->b:Lcom/octopus/ad/internal/e/b$2$1;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b$2$1;->b:Lcom/octopus/ad/internal/e/b$2;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b$2;->b:Lcom/octopus/ad/internal/e/b;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->n()V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void
.end method
