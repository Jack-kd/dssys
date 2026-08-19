.class public final Lcom/kwad/sdk/utils/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/utils/cf$a;
    }
.end annotation


# static fields
.field private static brE:Z = false

.field private static final brF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/cf$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/sdk/utils/cf;->brF:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static eG(Landroid/content/Context;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 10
    .line 11
    const/4 v4, -0x1

    .line 12
    const/16 v5, 0x1d

    .line 13
    .line 14
    if-lt v0, v5, :cond_1

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    if-lt v0, v5, :cond_1

    .line 19
    .line 20
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-ne p0, v4, :cond_0

    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    return v1

    .line 28
    :cond_1
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ne v0, v4, :cond_2

    .line 33
    .line 34
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 35
    .line 36
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-ne p0, v4, :cond_2

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    return v1
.end method

.method public static o(Landroid/content/Context;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/cf$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/utils/be;->useNetworkStateDisable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-boolean v0, Lcom/kwad/sdk/utils/cf;->brE:Z

    .line 14
    .line 15
    if-nez v0, :cond_5

    .line 16
    .line 17
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getSDKConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/kwad/sdk/api/SdkConfig;->canReadNearbyWifiList()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    sget-object v0, Lcom/kwad/sdk/utils/cf;->brF:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_5

    .line 34
    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    const-class v1, Lcom/kwad/sdk/service/a/h;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/kwad/sdk/service/a/h;

    .line 45
    .line 46
    const-wide/16 v2, 0x20

    .line 47
    .line 48
    invoke-interface {v1, v2, v3}, Lcom/kwad/sdk/service/a/h;->ao(J)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/utils/cf;->eG(Landroid/content/Context;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    :goto_0
    return-object v0

    .line 62
    :cond_3
    invoke-static {p0, p1}, Lcom/kwad/sdk/utils/c/d;->p(Landroid/content/Context;I)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_4

    .line 67
    .line 68
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p0

    .line 73
    const/4 p1, 0x1

    .line 74
    sput-boolean p1, Lcom/kwad/sdk/utils/cf;->brE:Z

    .line 75
    .line 76
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_1
    sget-object p0, Lcom/kwad/sdk/utils/cf;->brF:Ljava/util/List;

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_5
    :goto_2
    sget-object p0, Lcom/kwad/sdk/utils/cf;->brF:Ljava/util/List;

    .line 83
    .line 84
    return-object p0
.end method
