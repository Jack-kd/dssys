.class public Ls0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls0/b$c;
    }
.end annotation


# instance fields
.field public b:Lio/flutter/plugin/common/MethodChannel;

.field public c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field public e:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

.field public f:Lu0/b;

.field public final g:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ls0/b;->d:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Ls0/b;->g:Ljava/util/List;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Ls0/b;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Ls0/b;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    return-void
.end method

.method public static bridge synthetic b(Ls0/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ls0/b;->g:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Ls0/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Ls0/b;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic d(Ls0/b;)Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Ls0/b;->e:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    return-object p0
.end method

.method public static bridge synthetic e(Ls0/b;)Lu0/b;
    .locals 0

    .line 1
    iget-object p0, p0, Ls0/b;->f:Lu0/b;

    return-object p0
.end method

.method public static bridge synthetic f(Ls0/b;Lu0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls0/b;->f:Lu0/b;

    return-void
.end method

.method public static bridge synthetic g(Ls0/b;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ls0/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ls0/b;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ls0/b;->m(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ls0/b;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ls0/b;->o(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ls0/b;->f:Lu0/b;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lt0/e;->s()Lt0/e;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Ls0/b;->f:Lu0/b;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lt0/e;->A(Lu0/b;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Ls0/b;->f:Lu0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    :catchall_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Ls0/b;->e:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->e()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ls0/b;->e:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    :catchall_1
    :cond_1
    :try_start_2
    invoke-static {}, Lt0/e;->s()Lt0/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lt0/e;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 31
    .line 32
    .line 33
    :catchall_2
    iget-object v0, p0, Ls0/b;->g:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "code"

    .line 7
    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string p1, "message"

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls0/b;->e:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 6
    .line 7
    iget-object v1, p0, Ls0/b;->c:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ls0/b;->e:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lt0/e;->s()Lt0/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Ls0/b;->c:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v2, Ls0/b$a;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Ls0/b$a;-><init>(Ls0/b;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lt0/e;->u(Landroid/content/Context;Lu0/c;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final m(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "success"

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "code"

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string p1, "message"

    .line 23
    .line 24
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object v0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ls0/b;->e:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "onPlayResult"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p1, "NOT_READY"

    .line 9
    .line 10
    const-string p2, "DLNA not initialized (call init first)"

    .line 11
    .line 12
    invoke-virtual {p0, v1, p1, p2}, Ls0/b;->m(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, v2, p1}, Ls0/b;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p1, :cond_7

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    if-eqz p2, :cond_6

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v0, p0, Ls0/b;->g:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;->getId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 v3, 0x0

    .line 76
    :goto_0
    if-nez v3, :cond_5

    .line 77
    .line 78
    const-string p1, "DEVICE_NOT_FOUND"

    .line 79
    .line 80
    const-string p2, "device not in list"

    .line 81
    .line 82
    invoke-virtual {p0, v1, p1, p2}, Ls0/b;->m(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, v2, p1}, Ls0/b;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_5
    invoke-static {}, Lt0/e;->s()Lt0/e;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance v0, Ls0/b$b;

    .line 95
    .line 96
    invoke-direct {v0, p0, v3, p2, p3}, Ls0/b$b;-><init>(Ls0/b;Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lt0/e;->p(Lt0/e$d;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_6
    :goto_1
    const-string p1, "INVALID_URL"

    .line 104
    .line 105
    const-string p2, "url is empty"

    .line 106
    .line 107
    invoke-virtual {p0, v1, p1, p2}, Ls0/b;->m(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, v2, p1}, Ls0/b;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_7
    :goto_2
    const-string p1, "INVALID_DEVICE"

    .line 116
    .line 117
    const-string p2, "deviceId is empty"

    .line 118
    .line 119
    invoke-virtual {p0, v1, p1, p2}, Ls0/b;->m(ZLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, v2, p1}, Ls0/b;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/b;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Ls0/b;->d:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Ls0/a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Ls0/a;-><init>(Ls0/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Ls0/b;->c:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v1, "flutter_dlna"

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Ls0/b;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ls0/b;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Ls0/b;->j()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ls0/b;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 13
    .line 14
    iput-object v0, p0, Ls0/b;->c:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    sparse-switch v1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :sswitch_0
    const-string v1, "dispose"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x5

    .line 25
    goto :goto_0

    .line 26
    :sswitch_1
    const-string v1, "stop"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x4

    .line 36
    goto :goto_0

    .line 37
    :sswitch_2
    const-string v1, "init"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v2, 0x3

    .line 47
    goto :goto_0

    .line 48
    :sswitch_3
    const-string v1, "playUrl"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v2, 0x2

    .line 58
    goto :goto_0

    .line 59
    :sswitch_4
    const-string v1, "stopSearch"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 v2, 0x1

    .line 69
    goto :goto_0

    .line 70
    :sswitch_5
    const-string v1, "startSearch"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    const/4 v2, 0x0

    .line 80
    :goto_0
    const/4 v0, 0x0

    .line 81
    packed-switch v2, :pswitch_data_0

    .line 82
    .line 83
    .line 84
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Ls0/b;->j()V

    .line 89
    .line 90
    .line 91
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_1
    iget-object p1, p0, Ls0/b;->e:Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;

    .line 98
    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    new-instance v1, Ls0/b$c;

    .line 102
    .line 103
    invoke-direct {v1, v0}, Ls0/b$c;-><init>(Ls0/d;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->k(Lu0/a;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_2
    invoke-virtual {p0}, Ls0/b;->l()V

    .line 116
    .line 117
    .line 118
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_3
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p1, Ljava/util/Map;

    .line 127
    .line 128
    if-eqz p1, :cond_7

    .line 129
    .line 130
    const-string v1, "deviceId"

    .line 131
    .line 132
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    goto :goto_1

    .line 141
    :cond_7
    move-object v1, v0

    .line 142
    :goto_1
    if-eqz p1, :cond_8

    .line 143
    .line 144
    const-string v0, "url"

    .line 145
    .line 146
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :cond_8
    if-eqz p1, :cond_9

    .line 155
    .line 156
    const-string v2, "title"

    .line 157
    .line 158
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    if-eqz v3, :cond_9

    .line 163
    .line 164
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_2

    .line 173
    :cond_9
    const-string p1, "Video"

    .line 174
    .line 175
    :goto_2
    invoke-virtual {p0, v1, v0, p1}, Ls0/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :pswitch_4
    invoke-virtual {p0}, Ls0/b;->q()V

    .line 185
    .line 186
    .line 187
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_5
    invoke-virtual {p0}, Ls0/b;->p()V

    .line 194
    .line 195
    .line 196
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 197
    .line 198
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    nop

    .line 203
    :sswitch_data_0
    .sparse-switch
        -0x70163b56 -> :sswitch_5
        -0x51442fb6 -> :sswitch_4
        -0x1d6b7a65 -> :sswitch_3
        0x316510 -> :sswitch_2
        0x360802 -> :sswitch_1
        0x63a5261f -> :sswitch_0
    .end sparse-switch

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p()V
    .locals 1

    .line 1
    invoke-static {}, Lt0/e;->s()Lt0/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lt0/e;->y()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onDevices"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Ls0/b;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
