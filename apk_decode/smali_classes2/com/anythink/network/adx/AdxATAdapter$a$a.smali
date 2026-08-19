.class Lcom/anythink/network/adx/AdxATAdapter$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/sdk/api/format/SDMNativeLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATAdapter$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/adx/AdxATAdapter$a;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATAdapter$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATAdapter$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdLoadFail(Lcom/smartdigimkt/sdk/api/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/adx/AdxATAdapter$a;->e:Lcom/anythink/network/adx/AdxATAdapter;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/api/AdError;->getCode()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/api/AdError;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAdLoaded(Lcom/smartdigimkt/sdk/api/format/SDMNativeAd;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Lcom/anythink/network/adx/AdxATNativeAd;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/anythink/network/adx/AdxATAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATAdapter$a;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/anythink/network/adx/AdxATAdapter$a;->d:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/anythink/network/adx/AdxATAdapter$a;->e:Lcom/anythink/network/adx/AdxATAdapter;

    .line 10
    .line 11
    invoke-direct {v0, v2, p1, v1}, Lcom/anythink/network/adx/AdxATNativeAd;-><init>(Landroid/content/Context;Lcom/smartdigimkt/sdk/api/format/SDMNativeAd;Lcom/anythink/network/adx/AdxATAdapter;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/smartdigimkt/sdk/api/format/SDMAdHandler;->getSDMAd()Lcom/smartdigimkt/sdk/api/format/SDMAd;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/smartdigimkt/sdk/api/format/SDMAdHandler;->getSDMAd()Lcom/smartdigimkt/sdk/api/format/SDMAd;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/smartdigimkt/sdk/api/format/SDMAd;->getExtraInfo()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATAdapter$a;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/anythink/network/adx/AdxATAdapter$a;->e:Lcom/anythink/network/adx/AdxATAdapter;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/anythink/network/adx/AdxATAdapter;->a(Lcom/anythink/network/adx/AdxATAdapter;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setAdObject(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATAdapter$a;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/anythink/network/adx/AdxATAdapter$a;->e:Lcom/anythink/network/adx/AdxATAdapter;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/anythink/network/adx/AdxATAdapter;->b(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATAdapter$a;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/anythink/network/adx/AdxATAdapter$a;->e:Lcom/anythink/network/adx/AdxATAdapter;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/anythink/network/adx/AdxATAdapter;->c(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v1, 0x1

    .line 61
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    aput-object v0, v1, v2

    .line 65
    .line 66
    invoke-interface {p1, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATAdapter$a;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/anythink/network/adx/AdxATAdapter$a;->e:Lcom/anythink/network/adx/AdxATAdapter;

    .line 73
    .line 74
    iput-object v0, p1, Lcom/anythink/network/adx/AdxATAdapter;->d:Lcom/anythink/network/adx/AdxATNativeAd;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter$a$a;->a:Lcom/anythink/network/adx/AdxATAdapter$a;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/anythink/network/adx/AdxATAdapter$a;->e:Lcom/anythink/network/adx/AdxATAdapter;

    .line 80
    .line 81
    const-string v0, ""

    .line 82
    .line 83
    const-string v1, "return empty"

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
