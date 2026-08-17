.class public final Lcom/kwad/components/core/innerEc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static SZ:Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

.field private static Ta:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;


# direct methods
.method public static G(Lcom/kwad/components/core/e/d/a$a;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/components/core/e/d/a$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/AdTemplate;->hasInnerEcFailed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kwad/components/core/e/d/a$a;->qk()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 p0, 0xe

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/a$a;)I
    .locals 4

    .line 10
    const-string v0, "handleUserAuthCheck call"

    const-string v1, "SdkInnerECWrapper"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/f;->aw(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, v3}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setHasInnerEcFailed(Z)V

    .line 13
    :cond_0
    invoke-static {p1, v0}, Lcom/kwad/components/core/innerEc/logger/a;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    return v2

    .line 14
    :cond_1
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->rf()Lcom/kwad/components/core/innerEc/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/e;->rg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    const-string p0, "handleUserAuthCheck hasUserLogin"

    invoke-static {v1, p0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/logger/a;->aQ(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    const/4 p0, 0x2

    return p0

    .line 17
    :cond_2
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/f;->av(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "auth env check failed: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1, v3}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setHasInnerEcFailed(Z)V

    :cond_3
    const/16 p0, 0xbb9

    if-ne v0, p0, :cond_4

    .line 20
    const-string p0, "kwai_app_not_support"

    goto :goto_0

    :cond_4
    const-string p0, "appid_empty"

    .line 21
    :goto_0
    const-string p2, "app"

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;I)V

    return v2

    .line 22
    :cond_5
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/logger/a;->aR(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 23
    new-instance v0, Lcom/kwad/components/core/innerEc/f$1;

    invoke-direct {v0, p1, p2}, Lcom/kwad/components/core/innerEc/f$1;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/a$a;)V

    invoke-static {p0, p1, p2, v0}, Lcom/kwad/components/core/innerEc/f;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/a$a;Lcom/kwad/components/core/innerEc/a/a;)V

    return v3
.end method

.method public static a(Landroid/app/Activity;Lcom/kwad/components/offline/api/core/adInnerEc/YodaWebPageListener;Lcom/kwad/components/offline/api/core/adInnerEc/ExternalExitListener;)Landroid/webkit/WebView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/f;->b(Landroid/app/Application;)Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0, p1, p2}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->createYodaWebViewAndInit(Landroid/app/Activity;Lcom/kwad/components/offline/api/core/adInnerEc/YodaWebPageListener;Lcom/kwad/components/offline/api/core/adInnerEc/ExternalExitListener;)Landroid/webkit/WebView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createFullLivePlayer dataKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkInnerECWrapper"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/f;->b(Landroid/app/Application;)Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0, p1}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->createLivePlayer(Ljava/lang/String;)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "createFullLivePlayer player: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILivePluginProvider;)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveBindOwner;
    .locals 0

    .line 8
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/f;->b(Landroid/app/Application;)Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    invoke-interface {p0, p1, p2, p3}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->createLiveBindOwner(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILivePluginProvider;)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveBindOwner;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/app/Application;Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;
    .locals 2

    .line 43
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/f;->b(Landroid/app/Application;)Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    move-result-object p0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generateBasicEmoji module is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkInnerECWrapper"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0, p1, p2}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->generateBasicEmoji(Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/f;->b(Landroid/app/Application;)Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->startPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/a$a;Lcom/kwad/components/core/innerEc/a/a;)V
    .locals 8

    .line 24
    const-string v0, "startAuthPage call"

    const-string v1, "SdkInnerECWrapper"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->rl()Ljava/lang/String;

    move-result-object v7

    .line 26
    const-string v0, "startAuthPage startLoginWithKwaiClient"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "app"

    invoke-static {p1, v0}, Lcom/kwad/components/core/innerEc/logger/a;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lcom/kwad/sdk/wrapper/m;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->rf()Lcom/kwad/components/core/innerEc/e;

    move-result-object v1

    new-instance v2, Lcom/kwad/components/core/innerEc/f$2;

    move-object v5, p0

    move-object v3, p1

    move-object v6, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/kwad/components/core/innerEc/f$2;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/innerEc/a/a;Landroid/content/Context;Lcom/kwad/components/core/e/d/a$a;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->rl()Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-virtual {v1, v0, v2, p0}, Lcom/kwad/components/core/innerEc/e;->a(Landroid/app/Activity;Lcom/kwad/components/offline/api/adInnerEc/login/IAdInnerEcLoginBindListener;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/kwad/components/core/innerEc/c;)Z
    .locals 2

    .line 32
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 33
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 35
    :cond_0
    const-string v0, "code"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->rf()Lcom/kwad/components/core/innerEc/e;

    new-instance v0, Lcom/kwad/components/core/innerEc/f$3;

    invoke-direct {v0, p1}, Lcom/kwad/components/core/innerEc/f$3;-><init>(Lcom/kwad/components/core/innerEc/c;)V

    .line 38
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KS()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p0, v0, p1}, Lcom/kwad/components/core/innerEc/e;->b(Ljava/lang/String;Lcom/kwad/components/core/innerEc/c;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static aK(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/b;->ey(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/a;->cZ(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/a;->dG(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/b;->ru()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    move p0, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move p0, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/a;->dG(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    :goto_0
    if-eqz p0, :cond_2

    .line 38
    .line 39
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/local/a;->bo(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    return v3

    .line 46
    :cond_2
    return v2
.end method

.method private static av(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->rl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/f;->ax(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    const/16 p0, 0xbb9

    .line 22
    .line 23
    return p0

    .line 24
    :cond_1
    const/16 p0, 0xbb8

    .line 25
    .line 26
    return p0
.end method

.method private static aw(Landroid/content/Context;)I
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Lcom/kwad/components/core/offline/a/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/components/core/offline/a/a/a;

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/kwad/components/core/offline/a/a/a;->tr()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->rl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-static {p0}, Lcom/kwad/sdk/utils/au;->dG(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-static {p0}, Lcom/kwad/sdk/utils/au;->dH(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    :cond_1
    move p0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move p0, v2

    .line 45
    :goto_0
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KR()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KS()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KU()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move v1, v2

    .line 77
    :goto_1
    if-nez p0, :cond_4

    .line 78
    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    const/16 p0, 0x3e9

    .line 82
    .line 83
    return p0

    .line 84
    :cond_4
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->rf()Lcom/kwad/components/core/innerEc/e;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->isReady()Z

    .line 88
    .line 89
    .line 90
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-nez p0, :cond_5

    .line 92
    .line 93
    const/16 p0, 0x3ea

    .line 94
    .line 95
    return p0

    .line 96
    :cond_5
    return v2

    .line 97
    :cond_6
    :goto_2
    const/16 p0, 0x3e8

    .line 98
    .line 99
    return p0

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    const/16 p0, 0x3eb

    .line 105
    .line 106
    return p0
.end method

.method private static ax(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/utils/au;->dI(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/kwad/sdk/utils/au;->dJ(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const-class v1, Lcom/kwad/sdk/service/a/f;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/kwad/sdk/service/a/f;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/kwad/sdk/service/a/f;->getApiVersion()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "4.10.30"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lcom/kwad/sdk/utils/bz;->aE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    const/4 v3, 0x1

    .line 34
    if-ne v0, v3, :cond_1

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    if-nez v0, :cond_2

    .line 40
    .line 41
    if-ne p0, v3, :cond_2

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    return v2

    .line 46
    :cond_2
    return v3
.end method

.method private static b(Landroid/app/Application;)Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;
    .locals 4

    .line 5
    sget-object v0, Lcom/kwad/components/core/innerEc/f;->SZ:Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    const-class v0, Lcom/kwad/components/core/offline/a/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    move-result-object v0

    check-cast v0, Lcom/kwad/components/core/offline/a/a/a;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adInnerEcComponents is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkInnerECWrapper"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 8
    sget-object v3, Lcom/kwad/components/core/a;->pe:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    const-string v0, "\u7535\u5546\u95ed\u73af\u79bb\u7ebf\u7ec4\u4ef6\u672a\u5b89\u88c5\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/kwad/sdk/utils/ae;->c(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "adInnerEcComponents hasInnerEcCompoReady: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-interface {v0}, Lcom/kwad/components/core/offline/a/a/a;->tr()Z

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {v2, p0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_3

    .line 13
    const-string p0, " adInnerEcComponents is return null"

    invoke-static {v2, p0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 14
    :cond_3
    invoke-interface {v0}, Lcom/kwad/components/core/offline/a/a/a;->ts()Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    move-result-object p0

    if-nez p0, :cond_4

    .line 15
    const-string p0, " getExternalComponents is return null"

    invoke-static {v2, p0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 16
    :cond_4
    new-instance v0, Lcom/kwad/components/core/offline/b/a/a;

    invoke-direct {v0}, Lcom/kwad/components/core/offline/b/a/a;-><init>()V

    .line 17
    sget-object v1, Lcom/kwad/components/core/a;->pe:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->setDebug(Z)V

    .line 18
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "obtainEcModule setAdInnerEcHostProvider call "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kwad/components/core/offline/b/a/a;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-interface {p0, v0}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->setAdInnerEcHostProvider(Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcHostProvider;)V

    .line 20
    invoke-interface {p0}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->initModule()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initModule error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 23
    :goto_0
    sput-object p0, Lcom/kwad/components/core/innerEc/f;->SZ:Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    .line 24
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->rk()V

    return-object p0
.end method

.method public static b(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/f;->b(Landroid/app/Application;)Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initEmotionSdk module: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkInnerECWrapper"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->initEmotionSdk(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    invoke-interface {p0, p1}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->loadData(Z)V

    :cond_0
    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->dm(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->aZ(Ljava/lang/String;)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->aY(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->bv(I)Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a$a;->ua()Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy;->launch(Landroid/content/Context;Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static init()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/core/c/b;->getApplication()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/f;->b(Landroid/app/Application;)Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static ri()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/core/innerEc/f;->Ta:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/kwad/sdk/core/c/b;->getApplication()Landroid/app/Application;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/f;->b(Landroid/app/Application;)Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->createPBPaser()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/kwad/components/core/innerEc/f;->Ta:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;

    .line 25
    .line 26
    :cond_1
    sget-object v0, Lcom/kwad/components/core/innerEc/f;->Ta:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;

    .line 27
    .line 28
    return-object v0
.end method

.method public static rj()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->rf()Lcom/kwad/components/core/innerEc/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/e;->rg()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "SdkInnerECWrapper"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "obtainEcModule user not login"

    .line 15
    .line 16
    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/kwad/sdk/core/c/b;->getApplication()Landroid/app/Application;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/f;->b(Landroid/app/Application;)Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "obtainEcModule is null"

    .line 35
    .line 36
    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_1
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->getCurrentCookieMap()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method private static rk()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/core/innerEc/f$4;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/f$4;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/sdk/core/c/b;->a(Lcom/kwad/sdk/core/c/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static rl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aQB:Lcom/kwad/sdk/core/config/item/s;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/config/e;->b(Lcom/kwad/sdk/core/config/item/b;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic rm()Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/core/innerEc/f;->SZ:Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    .line 2
    .line 3
    return-object v0
.end method
