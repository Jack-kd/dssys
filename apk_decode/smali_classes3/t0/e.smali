.class public final Lt0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/e$c;,
        Lt0/e$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/List;

.field public c:Z

.field public d:Landroid/content/Context;

.field public e:Lorg/fourthline/cling/android/AndroidUpnpService;

.field public f:Landroid/content/ServiceConnection;

.field public g:Lu0/c;

.field public h:Lorg/fourthline/cling/registry/RegistryListener;

.field public final i:Ljava/util/List;

.field public j:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lt0/e;->a:Landroid/os/Handler;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt0/e;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lt0/e;->c:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt0/e;->i:Ljava/util/List;

    .line 7
    invoke-static {}, Lv0/a;->b()V

    .line 8
    new-instance v0, Lt0/e$a;

    invoke-direct {v0, p0}, Lt0/e$a;-><init>(Lt0/e;)V

    iput-object v0, p0, Lt0/e;->h:Lorg/fourthline/cling/registry/RegistryListener;

    return-void
.end method

.method public synthetic constructor <init>(Lt0/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt0/e;-><init>()V

    return-void
.end method

.method public static synthetic a(Lt0/e;Lorg/fourthline/cling/registry/Registry;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object p0, p0, Lt0/e;->i:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v1, 0x0

    .line 16
    :catchall_0
    :goto_0
    if-ge v1, p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    check-cast v2, Lu0/b;

    .line 25
    .line 26
    :try_start_0
    invoke-interface {p1}, Lorg/fourthline/cling/registry/Registry;->getDevices()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Lu0/b;->a(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public static synthetic b(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :catchall_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lt0/e$d;

    .line 16
    .line 17
    :try_start_0
    invoke-interface {v0, p1}, Lt0/e$d;->onError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public static synthetic c(Ljava/util/List;Lorg/fourthline/cling/android/AndroidUpnpService;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :catchall_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lt0/e$d;

    .line 16
    .line 17
    :try_start_0
    invoke-interface {v0, p1}, Lt0/e$d;->a(Lorg/fourthline/cling/android/AndroidUpnpService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public static synthetic d(Lt0/e;Lt0/e$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lt0/e;->e:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lt0/e$d;->a(Lorg/fourthline/cling/android/AndroidUpnpService;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic e(Lt0/e;)Lorg/fourthline/cling/registry/RegistryListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lt0/e;->h:Lorg/fourthline/cling/registry/RegistryListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lt0/e;)Lu0/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lt0/e;->g:Lu0/c;

    return-object p0
.end method

.method public static bridge synthetic g(Lt0/e;)Lorg/fourthline/cling/android/AndroidUpnpService;
    .locals 0

    .line 1
    iget-object p0, p0, Lt0/e;->e:Lorg/fourthline/cling/android/AndroidUpnpService;

    return-object p0
.end method

.method public static bridge synthetic h(Lt0/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lt0/e;->c:Z

    return-void
.end method

.method public static bridge synthetic i(Lt0/e;Lorg/fourthline/cling/android/AndroidUpnpService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt0/e;->e:Lorg/fourthline/cling/android/AndroidUpnpService;

    return-void
.end method

.method public static bridge synthetic j(Lt0/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt0/e;->q(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic k(Lt0/e;Lorg/fourthline/cling/android/AndroidUpnpService;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt0/e;->r(Lorg/fourthline/cling/android/AndroidUpnpService;)V

    return-void
.end method

.method public static bridge synthetic l(Lt0/e;Lorg/fourthline/cling/registry/Registry;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt0/e;->v(Lorg/fourthline/cling/registry/Registry;)V

    return-void
.end method

.method public static s()Lt0/e;
    .locals 1

    .line 1
    sget-object v0, Lt0/e$c;->a:Lt0/e;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public A(Lu0/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/e;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lt0/e;->d:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "wifi"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lt0/e;->j:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, "flutter-dlna-multicast"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lt0/e;->j:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lt0/e;->j:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lt0/e;->j:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt0/e;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "DLNAManager.init() first"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt0/e;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lt0/e;->i:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lt0/e;->g:Lu0/c;

    .line 11
    .line 12
    iput-object v0, p0, Lt0/e;->d:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method

.method public p(Lt0/e$d;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt0/e;->n()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lt0/e;->e:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lt0/e;->a:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v1, Lt0/c;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lt0/c;-><init>(Lt0/e;Lt0/e$d;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lt0/e;->b:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-boolean p1, p0, Lt0/e;->c:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lt0/e;->c:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Lt0/e;->y()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lt0/e;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lt0/e;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lt0/e;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lt0/e;->a:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v2, Lt0/b;

    .line 25
    .line 26
    invoke-direct {v2, v0, p1}, Lt0/b;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final r(Lorg/fourthline/cling/android/AndroidUpnpService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lt0/e;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lt0/e;->b:Ljava/util/List;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lt0/e;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lt0/e;->a:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v2, Lt0/d;

    .line 25
    .line 26
    invoke-direct {v2, v0, p1}, Lt0/d;-><init>(Ljava/util/List;Lorg/fourthline/cling/android/AndroidUpnpService;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public t()Lorg/fourthline/cling/android/AndroidUpnpService;
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/e;->e:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 2
    .line 3
    return-object v0
.end method

.method public u(Landroid/content/Context;Lu0/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/e;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lt0/e;->d:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lt0/e;->g:Lu0/c;

    .line 13
    .line 14
    return-void
.end method

.method public final v(Lorg/fourthline/cling/registry/Registry;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt0/e;->a:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lt0/a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lt0/a;-><init>(Lt0/e;Lorg/fourthline/cling/registry/Registry;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public w(Lu0/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/e;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lt0/e;->e:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lorg/fourthline/cling/android/AndroidUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lt0/e;->v(Lorg/fourthline/cling/registry/Registry;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lt0/e;->j:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lt0/e;->j:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lt0/e;->j:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 18
    .line 19
    return-void
.end method

.method public y()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lt0/e;->n()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lt0/e;->f:Landroid/content/ServiceConnection;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lt0/e;->e:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->search()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lt0/e;->e:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 20
    .line 21
    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lt0/e;->v(Lorg/fourthline/cling/registry/Registry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :catchall_0
    :cond_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Lt0/e;->m()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lt0/e$b;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lt0/e$b;-><init>(Lt0/e;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lt0/e;->f:Landroid/content/ServiceConnection;

    .line 38
    .line 39
    iget-object v0, p0, Lt0/e;->d:Landroid/content/Context;

    .line 40
    .line 41
    new-instance v1, Landroid/content/Intent;

    .line 42
    .line 43
    iget-object v2, p0, Lt0/e;->d:Landroid/content/Context;

    .line 44
    .line 45
    const-class v3, Lcom/flutter/dlna/flutter_dlna/dlna/DLNABrowserService;

    .line 46
    .line 47
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lt0/e;->f:Landroid/content/ServiceConnection;

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt0/e;->d:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lt0/e;->e:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lt0/e;->h:Lorg/fourthline/cling/registry/RegistryListener;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lt0/e;->h:Lorg/fourthline/cling/registry/RegistryListener;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->removeListener(Lorg/fourthline/cling/registry/RegistryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :catchall_0
    :cond_1
    :try_start_1
    iget-object v0, p0, Lt0/e;->f:Landroid/content/ServiceConnection;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lt0/e;->d:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    :catchall_1
    :cond_2
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lt0/e;->f:Landroid/content/ServiceConnection;

    .line 34
    .line 35
    iput-object v0, p0, Lt0/e;->e:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lt0/e;->c:Z

    .line 39
    .line 40
    const-string v0, "UPnP service stopped"

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lt0/e;->q(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lt0/e;->x()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
