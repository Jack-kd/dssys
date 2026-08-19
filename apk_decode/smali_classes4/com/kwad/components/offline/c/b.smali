.class public final Lcom/kwad/components/offline/c/b;
.super Lcom/kwad/components/core/offline/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/offline/c/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/components/core/offline/b/a<",
        "Lcom/kwad/components/offline/api/adWaynePlayer/IAdWaynePlayerOfflineCompo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/kwad/components/core/offline/b/a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/offline/c/b;-><init>()V

    return-void
.end method

.method private static Ap()Lcom/kwad/components/offline/c/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/components/offline/c/b$a;->Aq()Lcom/kwad/components/offline/c/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/kwad/components/offline/api/adWaynePlayer/IAdWaynePlayerOfflineCompo;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/kwad/components/offline/c/c;

    invoke-direct {v0}, Lcom/kwad/components/offline/c/c;-><init>()V

    new-instance v1, Lcom/kwad/components/offline/c/b$1;

    invoke-direct {v1, p0, p2}, Lcom/kwad/components/offline/c/b$1;-><init>(Lcom/kwad/components/offline/c/b;Lcom/kwad/components/offline/api/adWaynePlayer/IAdWaynePlayerOfflineCompo;)V

    invoke-interface {p2, p1, v0, v1}, Lcom/kwad/components/offline/api/IOfflineCompo;->init(Landroid/content/Context;Lcom/kwad/components/offline/api/IOfflineCompoInitConfig;Lcom/kwad/components/offline/api/InitCallBack;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/offline/c/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/kwad/components/core/offline/b/a;->tx()V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/offline/c/b;I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/offline/b/a;->bq(I)V

    return-void
.end method

.method public static aV(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/ksad/annotation/invoker/InvokeBy;
        invokerClass = Lcom/kwad/components/core/offline/b/b;
        methodId = "initOC"
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/components/offline/c/b;->Ap()Lcom/kwad/components/offline/c/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/offline/b/a;->init(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;ZLcom/kwad/components/offline/api/IOfflineCompo;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/kwad/components/offline/api/adWaynePlayer/IAdWaynePlayerOfflineCompo;

    invoke-direct {p0, p1, p3}, Lcom/kwad/components/offline/c/b;->a(Landroid/content/Context;Lcom/kwad/components/offline/api/adWaynePlayer/IAdWaynePlayerOfflineCompo;)V

    return-void
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AdWaynePlayerInitModule"

    .line 2
    .line 3
    return-object v0
.end method

.method public final isEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aQt:Lcom/kwad/sdk/core/config/item/l;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/l;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    if-lt v1, v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aQq:Lcom/kwad/sdk/core/config/item/d;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/sdk/core/config/e;->b(Lcom/kwad/sdk/core/config/item/b;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public final tA()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "5.4.10.1"

    .line 2
    .line 3
    return-object v0
.end method

.method public final tB()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://p3-lm.adkwai.com/udata/pkg/KS-Android-KSAdSDk/offline_components/adWaynePlayer/ks_so-adWaynePlayerNoSoRelease-5.4.10.1-d7b01836ac-303.zip"

    .line 2
    .line 3
    return-object v0
.end method

.method public final tC()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "0d54546e8c718b53e84fe64e88f2b7e7"

    .line 2
    .line 3
    return-object v0
.end method

.method public final tD()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ks_wayne_player_54101"

    .line 2
    .line 3
    return-object v0
.end method

.method public final tE()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.kwad.sdk.AdWaynePlayerOfflineCompoImpl"

    .line 2
    .line 3
    return-object v0
.end method

.method public final ty()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "WAYNEPLAYER"

    .line 2
    .line 3
    return-object v0
.end method

.method public final tz()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.kwad.components.adWaynePlayer"

    .line 2
    .line 3
    return-object v0
.end method
