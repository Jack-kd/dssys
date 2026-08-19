.class public Lcom/meishu/sdk/platform/ms/draw/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/a0$i;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/draw/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/draw/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 9
    .line 10
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 23
    .line 24
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x0

    .line 31
    aget-object v1, v1, v3

    .line 32
    .line 33
    invoke-static {v1, v0, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance v1, Lcom/meishu/sdk/platform/ms/d;

    .line 37
    .line 38
    invoke-direct {v1, v2, v0}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public success()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/draw/g;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 6
    .line 7
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 8
    .line 9
    new-instance v3, Lcom/meishu/sdk/platform/ms/draw/f$a;

    .line 10
    .line 11
    invoke-direct {v3, p0}, Lcom/meishu/sdk/platform/ms/draw/f$a;-><init>(Lcom/meishu/sdk/platform/ms/draw/f;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    int-to-float v4, v4

    .line 35
    invoke-static {v0, v4}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    int-to-float v4, v4

    .line 62
    invoke-static {v0, v4}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-virtual/range {v1 .. v8}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZZZFF)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
