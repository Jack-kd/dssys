.class public final Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManagerUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;
    .locals 2

    const-class v0, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManagerUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lms/bz/bd/c/Pgl/q0;->l(Ljava/lang/String;)Lms/bz/bd/c/Pgl/p0;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;

    invoke-direct {v1, p0}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;-><init>(Lms/bz/bd/c/Pgl/p0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig;)Z
    .locals 1

    const-class v0, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManagerUtils;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig;->a()Lms/bz/bd/c/Pgl/pblv;

    move-result-object p1

    invoke-static {p0, p1}, Lms/bz/bd/c/Pgl/q0;->hp(Landroid/content/Context;Lms/bz/bd/c/Pgl/pblv;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized initToken(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManagerUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lms/bz/bd/c/Pgl/q0;->hp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static pause()V
    .locals 7

    .line 1
    sget v0, Lms/bz/bd/c/Pgl/q0;->hp:I

    .line 2
    .line 3
    sget v0, Lms/bz/bd/c/Pgl/pblz;->hp:I

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    const v1, 0x4000004

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static resume()V
    .locals 7

    .line 1
    sget v0, Lms/bz/bd/c/Pgl/q0;->hp:I

    .line 2
    .line 3
    sget v0, Lms/bz/bd/c/Pgl/pblz;->hp:I

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    const v1, 0x4000005

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static versionInfo()Ljava/lang/String;
    .locals 7

    .line 1
    sget v0, Lms/bz/bd/c/Pgl/q0;->hp:I

    .line 2
    .line 3
    sget v0, Lms/bz/bd/c/Pgl/pblz;->hp:I

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    const v1, 0x4000003

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    return-object v0
.end method
