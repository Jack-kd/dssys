.class public Lt0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt0/e;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lt0/e;


# direct methods
.method public constructor <init>(Lt0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt0/e$b;->b:Lt0/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lt0/e$b;->b:Lt0/e;

    .line 3
    .line 4
    check-cast p2, Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 5
    .line 6
    invoke-static {v0, p2}, Lt0/e;->i(Lt0/e;Lorg/fourthline/cling/android/AndroidUpnpService;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lt0/e$b;->b:Lt0/e;

    .line 10
    .line 11
    invoke-static {p2}, Lt0/e;->g(Lt0/e;)Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2}, Lorg/fourthline/cling/android/AndroidUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p0, Lt0/e$b;->b:Lt0/e;

    .line 20
    .line 21
    invoke-static {v0}, Lt0/e;->e(Lt0/e;)Lorg/fourthline/cling/registry/RegistryListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p2, v0}, Lorg/fourthline/cling/registry/Registry;->addListener(Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lt0/e$b;->b:Lt0/e;

    .line 29
    .line 30
    invoke-static {p2}, Lt0/e;->g(Lt0/e;)Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p2}, Lorg/fourthline/cling/android/AndroidUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->search()V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lt0/e$b;->b:Lt0/e;

    .line 42
    .line 43
    invoke-static {p2, p1}, Lt0/e;->h(Lt0/e;Z)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lt0/e$b;->b:Lt0/e;

    .line 47
    .line 48
    invoke-static {p2}, Lt0/e;->f(Lt0/e;)Lu0/c;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    iget-object p2, p0, Lt0/e$b;->b:Lt0/e;

    .line 55
    .line 56
    invoke-static {p2}, Lt0/e;->f(Lt0/e;)Lu0/c;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p2}, Lu0/c;->onConnected()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p2

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    iget-object p2, p0, Lt0/e$b;->b:Lt0/e;

    .line 67
    .line 68
    invoke-static {p2}, Lt0/e;->g(Lt0/e;)Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p2, v0}, Lt0/e;->l(Lt0/e;Lorg/fourthline/cling/registry/Registry;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lt0/e$b;->b:Lt0/e;

    .line 80
    .line 81
    invoke-static {p2}, Lt0/e;->g(Lt0/e;)Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p2, v0}, Lt0/e;->k(Lt0/e;Lorg/fourthline/cling/android/AndroidUpnpService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :goto_1
    iget-object v0, p0, Lt0/e$b;->b:Lt0/e;

    .line 90
    .line 91
    invoke-static {v0, p1}, Lt0/e;->h(Lt0/e;Z)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lt0/e$b;->b:Lt0/e;

    .line 95
    .line 96
    invoke-static {p1}, Lt0/e;->f(Lt0/e;)Lu0/c;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    iget-object p1, p0, Lt0/e$b;->b:Lt0/e;

    .line 103
    .line 104
    invoke-static {p1}, Lt0/e;->f(Lt0/e;)Lu0/c;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p1}, Lu0/c;->onDisconnected()V

    .line 109
    .line 110
    .line 111
    :cond_1
    iget-object p1, p0, Lt0/e$b;->b:Lt0/e;

    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v1, "UPnP service init failed: "

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-static {p1, p2}, Lt0/e;->j(Lt0/e;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lt0/e$b;->b:Lt0/e;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lt0/e;->i(Lt0/e;Lorg/fourthline/cling/android/AndroidUpnpService;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lt0/e$b;->b:Lt0/e;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lt0/e;->h(Lt0/e;Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lt0/e$b;->b:Lt0/e;

    .line 14
    .line 15
    invoke-static {p1}, Lt0/e;->f(Lt0/e;)Lu0/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lt0/e$b;->b:Lt0/e;

    .line 22
    .line 23
    invoke-static {p1}, Lt0/e;->f(Lt0/e;)Lu0/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lu0/c;->onDisconnected()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lt0/e$b;->b:Lt0/e;

    .line 31
    .line 32
    const-string v0, "UPnP service disconnected"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lt0/e;->j(Lt0/e;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
