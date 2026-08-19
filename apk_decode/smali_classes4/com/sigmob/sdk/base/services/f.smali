.class public Lcom/sigmob/sdk/base/services/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/services/f$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "LocationService"

.field public static final b:Ljava/lang/String; = "AppInstallService"

.field public static final c:Ljava/lang/String; = "WifiScanService"

.field public static final d:Ljava/lang/String; = "DownloadService"

.field private static e:Lcom/sigmob/sdk/base/services/f$a;

.field private static f:Lcom/sigmob/sdk/base/services/f$a;

.field private static g:Lcom/sigmob/sdk/base/services/f$a;

.field private static h:Lcom/sigmob/sdk/base/services/f$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/base/services/f$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/services/f;->f:Lcom/sigmob/sdk/base/services/f$a;

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/sigmob/sdk/base/services/f$a;
    .locals 5

    .line 2
    const-class v0, Lcom/sigmob/sdk/base/services/f;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x15187cfb

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_2

    const v2, 0x32f35120

    if-eq v1, v2, :cond_1

    const v2, 0x526324ed

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "DownloadService"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string v1, "LocationService"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "AppInstallService"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_6

    if-eq p0, v4, :cond_4

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_4
    :try_start_1
    sget-object p0, Lcom/sigmob/sdk/base/services/f;->h:Lcom/sigmob/sdk/base/services/f$a;

    if-nez p0, :cond_5

    new-instance p0, Lcom/sigmob/sdk/base/services/d;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/services/d;-><init>()V

    sput-object p0, Lcom/sigmob/sdk/base/services/f;->h:Lcom/sigmob/sdk/base/services/f$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_5
    monitor-exit v0

    return-object p0

    :cond_6
    :try_start_2
    sget-object p0, Lcom/sigmob/sdk/base/services/f;->f:Lcom/sigmob/sdk/base/services/f$a;

    if-nez p0, :cond_7

    new-instance p0, Lcom/sigmob/sdk/base/services/b;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/services/b;-><init>()V

    sput-object p0, Lcom/sigmob/sdk/base/services/f;->f:Lcom/sigmob/sdk/base/services/f$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_7
    monitor-exit v0

    return-object p0

    :cond_8
    :try_start_3
    sget-object p0, Lcom/sigmob/sdk/base/services/f;->e:Lcom/sigmob/sdk/base/services/f$a;

    if-nez p0, :cond_9

    new-instance p0, Lcom/sigmob/sdk/base/services/e;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/services/e;-><init>()V

    sput-object p0, Lcom/sigmob/sdk/base/services/f;->e:Lcom/sigmob/sdk/base/services/f$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_9
    monitor-exit v0

    return-object p0

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3

    .line 3
    invoke-static {p0}, Lcom/sigmob/sdk/base/services/f;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/services/f$a;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DownloadService"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "LocationService"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "AppInstallService"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "WifiScanService"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p1, :cond_5

    invoke-interface {v0}, Lcom/sigmob/sdk/base/services/f$a;->e()Z

    return-void

    :cond_5
    sget-object p0, Lcom/sigmob/sdk/base/services/f;->h:Lcom/sigmob/sdk/base/services/f$a;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/sigmob/sdk/base/services/f$a;->g()V

    return-void

    :pswitch_1
    if-eqz p1, :cond_6

    invoke-interface {v0}, Lcom/sigmob/sdk/base/services/f$a;->e()Z

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/sigmob/sdk/base/services/f;->e:Lcom/sigmob/sdk/base/services/f$a;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/sigmob/sdk/base/services/f$a;->g()V

    :cond_7
    :goto_1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/ClientMetadata;->setEnableLocation(Z)V

    return-void

    :pswitch_2
    if-eqz p1, :cond_8

    invoke-interface {v0}, Lcom/sigmob/sdk/base/services/f$a;->e()Z

    return-void

    :cond_8
    sget-object p0, Lcom/sigmob/sdk/base/services/f;->f:Lcom/sigmob/sdk/base/services/f$a;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/sigmob/sdk/base/services/f$a;->g()V

    return-void

    :pswitch_3
    if-eqz p1, :cond_9

    invoke-interface {v0}, Lcom/sigmob/sdk/base/services/f$a;->e()Z

    return-void

    :cond_9
    sget-object p0, Lcom/sigmob/sdk/base/services/f;->g:Lcom/sigmob/sdk/base/services/f$a;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/sigmob/sdk/base/services/f$a;->g()V

    :cond_a
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x39ad5cfd -> :sswitch_3
        0x15187cfb -> :sswitch_2
        0x32f35120 -> :sswitch_1
        0x526324ed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Lcom/sigmob/sdk/base/services/f$a;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/services/f;->g:Lcom/sigmob/sdk/base/services/f$a;

    return-object v0
.end method

.method public static c()Lcom/sigmob/sdk/base/services/f$a;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/services/f;->h:Lcom/sigmob/sdk/base/services/f$a;

    return-object v0
.end method

.method public static d()Lcom/sigmob/sdk/base/services/f$a;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/services/f;->e:Lcom/sigmob/sdk/base/services/f$a;

    return-object v0
.end method
