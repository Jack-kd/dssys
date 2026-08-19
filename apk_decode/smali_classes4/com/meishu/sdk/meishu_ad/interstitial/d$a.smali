.class public Lcom/meishu/sdk/meishu_ad/interstitial/d$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/interstitial/d;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/interstitial/d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/interstitial/d;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d$a;->a:Landroid/graphics/Bitmap;

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
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/interstitial/d;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d$a;->a:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->e:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/d;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/interstitial/d;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d$a;->a:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->f:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/d;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/interstitial/d;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 28
    .line 29
    iget v2, v1, Lcom/meishu/sdk/meishu_ad/interstitial/c;->e:I

    .line 30
    .line 31
    iget v3, v1, Lcom/meishu/sdk/meishu_ad/interstitial/c;->f:I

    .line 32
    .line 33
    if-le v2, v3, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    iput v2, v1, Lcom/meishu/sdk/meishu_ad/interstitial/c;->d:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/interstitial/d;->a:Landroid/app/Activity;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v1, v0, v2}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a(Lcom/meishu/sdk/meishu_ad/interstitial/c;Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
