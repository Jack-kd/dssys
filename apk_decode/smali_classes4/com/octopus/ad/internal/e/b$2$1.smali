.class Lcom/octopus/ad/internal/e/b$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/d/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/b$2;->onBitmapLoaded(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/octopus/ad/internal/e/b$2;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/b$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/b$2$1;->b:Lcom/octopus/ad/internal/e/b$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/e/b$2$1;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/octopus/ad/internal/e/b$2$1$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/e/b$2$1$1;-><init>(Lcom/octopus/ad/internal/e/b$2$1;Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
