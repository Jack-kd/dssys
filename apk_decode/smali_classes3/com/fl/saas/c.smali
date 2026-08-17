.class public Lcom/fl/saas/c;
.super Lcom/fl/saas/Y;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/fl/saas/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/Y;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/fl/saas/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/fl/saas/c;->c:Lcom/fl/saas/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/fl/saas/c;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/fl/saas/c;->c:Lcom/fl/saas/c;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/fl/saas/c;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/fl/saas/c;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/fl/saas/c;->c:Lcom/fl/saas/c;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/fl/saas/c;->c:Lcom/fl/saas/c;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "apiVersion"

    .line 7
    .line 8
    const-string v2, "4.4"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "sdkVersion"

    .line 14
    .line 15
    const-string v2, "29109"

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
