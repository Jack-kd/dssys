.class public Lcom/meishu/sdk/meishu_ad/u$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/u;->a(Lcom/meishu/sdk/core/domain/HttpResponse;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/u;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/u;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/u$a;->b:Lcom/meishu/sdk/meishu_ad/u;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/u$a;->a:[B

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/u$a;->b:Lcom/meishu/sdk/meishu_ad/u;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/u$a;->a:[B

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([B)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/u$a;->b:Lcom/meishu/sdk/meishu_ad/u;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/ad/splash/c;->setWidth(Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/u$a;->b:Lcom/meishu/sdk/meishu_ad/u;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifHeight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/ad/splash/c;->setHeight(Ljava/lang/Integer;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/u$a;->b:Lcom/meishu/sdk/meishu_ad/u;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimation()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
