.class Lcom/octopus/ad/internal/b/c$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/c/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/c$a;->a(Lcom/octopus/ad/internal/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/NativeAdResponse;

.field final synthetic b:Lcom/octopus/ad/internal/b/c$a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/c$a;Lcom/octopus/ad/NativeAdResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/c$a$1;->b:Lcom/octopus/ad/internal/b/c$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/c$a$1;->a:Lcom/octopus/ad/NativeAdResponse;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    sget-object v0, Lcom/octopus/ad/internal/c/f;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image downloading logFailed for url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/octopus/ad/internal/b/c$a$1;->a:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v2}, Lcom/octopus/ad/NativeAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c$a$1;->a:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0, p1}, Lcom/octopus/ad/NativeAdResponse;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method
