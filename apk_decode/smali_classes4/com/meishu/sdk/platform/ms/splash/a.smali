.class public Lcom/meishu/sdk/platform/ms/splash/a;
.super Lcom/meishu/sdk/platform/ms/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/ms/g<",
        "Lcom/meishu/sdk/meishu_ad/splash/d;",
        "Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;",
        "Lcom/meishu/sdk/core/ad/splash/d;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/meishu/sdk/meishu_ad/v;

.field public c:Lcom/meishu/sdk/meishu_ad/splash/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/meishu_ad/splash/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/ms/g;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/ad/AdSlot;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/a;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    check-cast v1, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 9
    .line 10
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "stepNum"

    .line 21
    .line 22
    const/4 v5, -0x1

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string v4, "msg"

    .line 31
    .line 32
    const-string v5, "destroy invoke"

    .line 33
    .line 34
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/splash/g;->a()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    const-string v5, "creativeType"

    .line 44
    .line 45
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    iget-object v4, v1, Lcom/meishu/sdk/platform/ms/splash/g;->a:[Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v4, v2}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :goto_2
    iput-object v0, v1, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 65
    .line 66
    iput-object v0, v1, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    .line 67
    .line 68
    iput-object v0, v1, Lcom/meishu/sdk/platform/ms/splash/g;->b:Lcom/meishu/sdk/core/ad/splash/d;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public loadAd()V
    .locals 1

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/ms/splash/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/ms/splash/a$a;-><init>(Lcom/meishu/sdk/platform/ms/splash/a;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
