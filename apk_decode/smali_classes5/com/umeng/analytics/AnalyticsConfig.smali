.class public Lcom/umeng/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CATCH_EXCEPTION:Z = false

.field public static CHANGE_CATCH_EXCEPTION_NOTALLOW:Z = true

.field public static CLEAR_EKV_BL:Z = false

.field public static CLEAR_EKV_WL:Z = false

.field public static final DEBUG_KEY:Ljava/lang/String; = "debugkey"

.field public static final DEBUG_MODE_PERIOD:Ljava/lang/String; = "sendaging"

.field public static GPU_RENDERER:Ljava/lang/String; = ""

.field public static GPU_VENDER:Ljava/lang/String; = ""

.field public static final RTD_PERIOD:Ljava/lang/String; = "period"

.field public static final RTD_SP_FILE:Ljava/lang/String;

.field public static final RTD_START_TIME:Ljava/lang/String; = "startTime"

.field static a:[D = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:I = 0x0

.field public static enable:Z = true

.field private static f:Ljava/lang/Object; = null

.field private static g:Z = false

.field private static h:Ljava/lang/String; = null

.field public static kContinueSessionMillis:J = 0x7530L

.field public static mWrapperType:Ljava/lang/String;

.field public static mWrapperVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/umeng/analytics/pro/be;->b()Lcom/umeng/analytics/pro/be;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "rtd"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/be;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->RTD_SP_FILE:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->f:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->g:Z

    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->h:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 0

    .line 6
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 7
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object p0

    sget p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    invoke-virtual {p0, p1}, Lcom/umeng/common/b;->a(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    move-result-object p0

    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/common/b;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 5
    const-string p1, "\\|"

    const-string v0, "MobclickAgent.setSecret\u65b9\u6cd5\u53c2\u6570secretkey\u4e0d\u80fd\u4e3anull\uff0c\u4e5f\u4e0d\u80fd\u4e3a\u7a7a\u5b57\u7b26\u4e32\u3002|secretkey\u53c2\u6570\u5fc5\u987b\u662f\u975e\u7a7a \u5b57\u7b26\u4e32\u3002"

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getGameSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    const-string p0, "com.umeng.analytics.game.GameSdkVersion"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "SDK_VERSION"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :catchall_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public static getLocation()[D
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    .line 2
    .line 3
    return-object v0
.end method

.method public static getRealTimeDebugKey()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->h:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static getSecretKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/umeng/common/b;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    sget-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method

.method public static getVerticalType(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Lcom/umeng/common/b;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/umeng/common/b;->d()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sput p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 14
    .line 15
    :cond_0
    sget p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 16
    .line 17
    return p0
.end method

.method public static isRealTimeDebugMode()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->g:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static turnOffRealTimeDebug()V
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->g:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->h:Ljava/lang/String;

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public static turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->g:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string v1, "debugkey"

    .line 10
    .line 11
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, "debugkey"

    .line 18
    .line 19
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/String;

    .line 24
    .line 25
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->h:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method
