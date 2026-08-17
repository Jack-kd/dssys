.class public abstract Lorg/eclipse/jetty/client/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/j$b;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final LOG:LR1/c;

.field public static final STATUS_CANCELLED:I = 0xb

.field public static final STATUS_CANCELLING:I = 0xa

.field public static final STATUS_COMPLETED:I = 0x7

.field public static final STATUS_EXCEPTED:I = 0x9

.field public static final STATUS_EXPIRED:I = 0x8

.field public static final STATUS_PARSING_CONTENT:I = 0x6

.field public static final STATUS_PARSING_HEADERS:I = 0x5

.field public static final STATUS_SENDING_COMPLETED:I = 0xe

.field public static final STATUS_SENDING_PARSING_CONTENT:I = 0xd

.field public static final STATUS_SENDING_PARSING_HEADERS:I = 0xc

.field public static final STATUS_SENDING_REQUEST:I = 0x3

.field public static final STATUS_START:I = 0x0

.field public static final STATUS_WAITING_FOR_COMMIT:I = 0x2

.field public static final STATUS_WAITING_FOR_CONNECTION:I = 0x1

.field public static final STATUS_WAITING_FOR_RESPONSE:I = 0x4


# instance fields
.field private _address:Lorg/eclipse/jetty/client/b;

.field private _configureListeners:Z

.field private volatile _connection:Lorg/eclipse/jetty/client/a;

.field private _lastState:I

.field private _lastStateChange:J

.field private _lastStatePeriod:I

.field private _listener:Lorg/eclipse/jetty/client/h;

.field private _localAddress:Lorg/eclipse/jetty/client/b;

.field private _method:Ljava/lang/String;

.field _onDone:Z

.field _onRequestCompleteDone:Z

.field _onResponseCompleteDone:Z

.field private _requestContent:LL1/d;

.field private _requestContentSource:Ljava/io/InputStream;

.field private final _requestFields:Lorg/eclipse/jetty/http/g;

.field private _retryStatus:Z

.field private _scheme:LL1/d;

.field private _sent:J

.field private _status:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _timeout:J

.field private volatile _timeoutTask:LW1/e$a;

.field private _uri:Ljava/lang/String;

.field private _version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/client/j;->LOG:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "GET"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/eclipse/jetty/client/j;->_method:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lorg/eclipse/jetty/http/m;->a:LL1/d;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/eclipse/jetty/client/j;->_scheme:LL1/d;

    .line 11
    .line 12
    const/16 v0, 0xb

    .line 13
    .line 14
    iput v0, p0, Lorg/eclipse/jetty/client/j;->_version:I

    .line 15
    .line 16
    new-instance v0, Lorg/eclipse/jetty/http/g;

    .line 17
    .line 18
    invoke-direct {v0}, Lorg/eclipse/jetty/http/g;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/eclipse/jetty/client/j;->_requestFields:Lorg/eclipse/jetty/http/g;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/j;->_retryStatus:Z

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/j;->_configureListeners:Z

    .line 35
    .line 36
    new-instance v0, Lorg/eclipse/jetty/client/j$b;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/client/j$b;-><init>(Lorg/eclipse/jetty/client/j;Lorg/eclipse/jetty/client/j$a;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/eclipse/jetty/client/j;->_listener:Lorg/eclipse/jetty/client/h;

    .line 43
    .line 44
    iput-object v1, p0, Lorg/eclipse/jetty/client/j;->_localAddress:Lorg/eclipse/jetty/client/b;

    .line 45
    .line 46
    const-wide/16 v0, -0x1

    .line 47
    .line 48
    iput-wide v0, p0, Lorg/eclipse/jetty/client/j;->_timeout:J

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    iput-wide v2, p0, Lorg/eclipse/jetty/client/j;->_lastStateChange:J

    .line 55
    .line 56
    iput-wide v0, p0, Lorg/eclipse/jetty/client/j;->_sent:J

    .line 57
    .line 58
    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lorg/eclipse/jetty/client/j;->_lastState:I

    .line 60
    .line 61
    iput v0, p0, Lorg/eclipse/jetty/client/j;->_lastStatePeriod:I

    .line 62
    .line 63
    return-void
.end method

.method public static synthetic access$100(Lorg/eclipse/jetty/client/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static toState(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "UNKNOWN"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "SENDING+COMPLETED"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "SENDING+CONTENT"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "SENDING+HEADERS"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "CANCELLED"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "CANCELLING"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_5
    const-string p0, "EXCEPTED"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_6
    const-string p0, "EXPIRED"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_7
    const-string p0, "COMPLETED"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_8
    const-string p0, "CONTENT"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_9
    const-string p0, "HEADERS"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_a
    const-string p0, "WAITING"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_b
    const-string p0, "SENDING"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_c
    const-string p0, "CONNECTED"

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_d
    const-string p0, "CONNECTING"

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_e
    const-string p0, "START"

    .line 50
    .line 51
    return-object p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_connection:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/a;->k()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->disassociate()Lorg/eclipse/jetty/client/a;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/client/j;->LOG:LR1/c;

    .line 16
    .line 17
    invoke-interface {v1, v0}, LR1/c;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->disassociate()Lorg/eclipse/jetty/client/a;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->disassociate()Lorg/eclipse/jetty/client/a;

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_0
    return-void
.end method

.method public addRequestHeader(LL1/d;LL1/d;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getRequestFields()Lorg/eclipse/jetty/http/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/g;->d(LL1/d;LL1/d;)V

    return-void
.end method

.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getRequestFields()Lorg/eclipse/jetty/http/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public associate(Lorg/eclipse/jetty/client/a;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, LL1/b;->e()LL1/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, LL1/k;->d()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lorg/eclipse/jetty/client/b;

    .line 12
    .line 13
    invoke-virtual {p1}, LL1/b;->e()LL1/k;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, LL1/k;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, LL1/b;->e()LL1/k;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, LL1/k;->getLocalPort()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/client/b;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/eclipse/jetty/client/j;->_localAddress:Lorg/eclipse/jetty/client/b;

    .line 33
    .line 34
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/j;->_connection:Lorg/eclipse/jetty/client/a;

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/16 v0, 0xa

    .line 41
    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->a()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->disassociate()Lorg/eclipse/jetty/client/a;

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/j;->_onDone:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/j;->_onResponseCompleteDone:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public cancelTimeout(Lorg/eclipse/jetty/client/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_timeoutTask:LW1/e$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/g;->c0(LW1/e$a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/eclipse/jetty/client/j;->_timeoutTask:LW1/e$a;

    .line 10
    .line 11
    return-void
.end method

.method public configureListeners()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/j;->_configureListeners:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p2}, Lorg/eclipse/jetty/client/h;->f()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return p1
.end method

.method public disassociate()Lorg/eclipse/jetty/client/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_connection:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/eclipse/jetty/client/j;->_connection:Lorg/eclipse/jetty/client/a;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const/16 v1, 0xb

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v0
.end method

.method public expire(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_connection:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x7

    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    const/16 v2, 0xc

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    const/16 v2, 0xd

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    const/16 v2, 0xe

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    :cond_0
    const/16 v1, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/HttpDestination;->d(Lorg/eclipse/jetty/client/j;)V

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/client/a;->n(Lorg/eclipse/jetty/client/j;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public getAddress()Lorg/eclipse/jetty/client/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_address:Lorg/eclipse/jetty/client/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventListener()Lorg/eclipse/jetty/client/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_listener:Lorg/eclipse/jetty/client/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalAddress()Lorg/eclipse/jetty/client/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_localAddress:Lorg/eclipse/jetty/client/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_method:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestContent()LL1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_requestContent:LL1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestContentChunk(LL1/d;)LL1/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_requestContentSource:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, LL1/h;

    .line 9
    .line 10
    const/16 v0, 0x2000

    .line 11
    .line 12
    invoke-direct {p1, v0}, LL1/h;-><init>(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, LL1/d;->f0()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lorg/eclipse/jetty/client/j;->_requestContentSource:Ljava/io/InputStream;

    .line 23
    .line 24
    invoke-interface {p1}, LL1/d;->p0()[B

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {p1}, LL1/d;->n0()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ltz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, LL1/d;->n0()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v1, v0

    .line 43
    invoke-interface {p1, v1}, LL1/d;->q0(I)V

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-object p1

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    monitor-exit p0

    .line 50
    return-object p1

    .line 51
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1
.end method

.method public getRequestContentSource()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_requestContentSource:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestFields()Lorg/eclipse/jetty/http/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_requestFields:Lorg/eclipse/jetty/http/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_uri:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRetryStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/j;->_retryStatus:Z

    .line 2
    .line 3
    return v0
.end method

.method public getScheme()LL1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_scheme:LL1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/eclipse/jetty/client/j;->_timeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getRequestURI()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/client/j;->_version:I

    .line 2
    .line 3
    return v0
.end method

.method public isAssociated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_connection:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/j;->_onDone:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->isDone()Z

    move-result p1

    return p1
.end method

.method public abstract onConnectionFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onException(Ljava/lang/Throwable;)V
.end method

.method public onExpire()V
    .locals 3

    .line 1
    sget-object v0, Lorg/eclipse/jetty/client/j;->LOG:LR1/c;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "EXPIRED "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onRequestCommitted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onRequestComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onResponseComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onResponseContent(LL1/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onResponseHeader(LL1/d;LL1/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onResponseHeaderComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onResponseStatus(LL1/d;ILL1/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRetry()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_requestContentSource:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/eclipse/jetty/client/j;->_requestContent:LL1/d;

    .line 13
    .line 14
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_requestContentSource:Ljava/io/InputStream;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 21
    .line 22
    const-string v1, "Unsupported retry attempt"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    return-void
.end method

.method public onSwitchProtocol(LL1/k;)LL1/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public reset()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lorg/eclipse/jetty/client/j;->_timeoutTask:LW1/e$a;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/j;->_onRequestCompleteDone:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/j;->_onResponseCompleteDone:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/j;->_onDone:Z

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public scheduleTimeout(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/eclipse/jetty/client/j$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/client/j$a;-><init>(Lorg/eclipse/jetty/client/j;Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/eclipse/jetty/client/j;->_timeoutTask:LW1/e$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getTimeout()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v2, v0, v2

    .line 19
    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_timeoutTask:LW1/e$a;

    .line 23
    .line 24
    invoke-virtual {p1, v2, v0, v1}, Lorg/eclipse/jetty/client/g;->u0(LW1/e$a;J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_timeoutTask:LW1/e$a;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/g;->t0(LW1/e$a;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setAddress(Lorg/eclipse/jetty/client/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/j;->_address:Lorg/eclipse/jetty/client/b;

    .line 2
    .line 3
    return-void
.end method

.method public setConfigureListeners(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/j;->_configureListeners:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEventListener(Lorg/eclipse/jetty/client/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/j;->_listener:Lorg/eclipse/jetty/client/h;

    .line 2
    .line 3
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/j;->_method:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestContent(LL1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/j;->_requestContent:LL1/d;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestContentSource(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/j;->_requestContentSource:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lorg/eclipse/jetty/client/j;->_requestContentSource:Ljava/io/InputStream;

    .line 12
    .line 13
    const v0, 0x7fffffff

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setRequestContentType(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getRequestFields()Lorg/eclipse/jetty/http/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/eclipse/jetty/http/j;->z:LL1/d;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/http/g;->w(LL1/d;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setRequestHeader(LL1/d;LL1/d;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getRequestFields()Lorg/eclipse/jetty/http/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/g;->v(LL1/d;LL1/d;)V

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getRequestFields()Lorg/eclipse/jetty/http/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/g;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRequestURI(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/j;->_uri:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRetryStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/j;->_retryStatus:Z

    .line 2
    .line 3
    return-void
.end method

.method public setScheme(LL1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/j;->_scheme:LL1/d;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 2
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lorg/eclipse/jetty/http/m;->a:LL1/d;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/j;->setScheme(LL1/d;)V

    return-void

    .line 4
    :cond_0
    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p1, Lorg/eclipse/jetty/http/m;->b:LL1/d;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/j;->setScheme(LL1/d;)V

    return-void

    .line 6
    :cond_1
    new-instance v0, LL1/h;

    invoke-direct {v0, p1}, LL1/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/j;->setScheme(LL1/d;)V

    :cond_2
    return-void
.end method

.method public setStatus(I)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq v1, p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-wide v5, p0, Lorg/eclipse/jetty/client/j;->_lastStateChange:J

    .line 16
    .line 17
    sub-long v5, v3, v5

    .line 18
    .line 19
    long-to-int v5, v5

    .line 20
    iput v5, p0, Lorg/eclipse/jetty/client/j;->_lastStatePeriod:I

    .line 21
    .line 22
    iput v1, p0, Lorg/eclipse/jetty/client/j;->_lastState:I

    .line 23
    .line 24
    iput-wide v3, p0, Lorg/eclipse/jetty/client/j;->_lastStateChange:J

    .line 25
    .line 26
    if-ne p1, v2, :cond_0

    .line 27
    .line 28
    iput-wide v3, p0, Lorg/eclipse/jetty/client/j;->_sent:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_0
    :goto_0
    const-string v3, " => "

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    const/4 v5, 0x6

    .line 38
    const/4 v6, 0x7

    .line 39
    const/4 v7, 0x5

    .line 40
    const/4 v8, 0x4

    .line 41
    const/4 v9, 0x1

    .line 42
    packed-switch v1, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {v2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    throw v2

    .line 69
    :pswitch_0
    if-eq p1, v8, :cond_2

    .line 70
    .line 71
    packed-switch p1, :pswitch_data_1

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :pswitch_1
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    .line 77
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :cond_1
    :goto_1
    move v9, v0

    .line 82
    move v0, v2

    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :pswitch_2
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/j;->d(II)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    .line 92
    invoke-virtual {v2, v1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 93
    .line 94
    .line 95
    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-interface {v4}, Lorg/eclipse/jetty/client/h;->g()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_1
    move-exception p1

    .line 107
    move v0, v2

    .line 108
    goto/16 :goto_6

    .line 109
    .line 110
    :pswitch_3
    if-eq p1, v8, :cond_3

    .line 111
    .line 112
    packed-switch p1, :pswitch_data_2

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :pswitch_4
    :try_start_3
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    .line 118
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    goto :goto_1

    .line 123
    :pswitch_5
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/j;->d(II)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    goto :goto_1

    .line 128
    :pswitch_6
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    .line 130
    const/16 v4, 0xe

    .line 131
    .line 132
    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 133
    .line 134
    .line 135
    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 136
    if-eqz v2, :cond_1

    .line 137
    .line 138
    :try_start_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-interface {v4}, Lorg/eclipse/jetty/client/h;->k()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    :try_start_5
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 147
    .line 148
    invoke-virtual {v2, v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 149
    .line 150
    .line 151
    move-result v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 152
    if-eqz v2, :cond_1

    .line 153
    .line 154
    :try_start_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-interface {v4}, Lorg/eclipse/jetty/client/h;->g()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :pswitch_7
    if-eq p1, v8, :cond_5

    .line 163
    .line 164
    if-eq p1, v5, :cond_4

    .line 165
    .line 166
    packed-switch p1, :pswitch_data_3

    .line 167
    .line 168
    .line 169
    :goto_2
    move v9, v0

    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :pswitch_8
    :try_start_7
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 173
    .line 174
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    goto :goto_1

    .line 179
    :pswitch_9
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/j;->d(II)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    goto :goto_1

    .line 184
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 185
    .line 186
    const/16 v4, 0xd

    .line 187
    .line 188
    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 189
    .line 190
    .line 191
    move-result v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 192
    if-eqz v2, :cond_1

    .line 193
    .line 194
    :try_start_8
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-interface {v4}, Lorg/eclipse/jetty/client/h;->c()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_5
    :try_start_9
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 203
    .line 204
    invoke-virtual {v2, v1, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 205
    .line 206
    .line 207
    move-result v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 208
    if-eqz v2, :cond_1

    .line 209
    .line 210
    :try_start_a
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-interface {v4}, Lorg/eclipse/jetty/client/h;->g()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 215
    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :pswitch_a
    const/16 v2, 0x9

    .line 220
    .line 221
    if-eq p1, v2, :cond_6

    .line 222
    .line 223
    const/16 v2, 0xb

    .line 224
    .line 225
    if-eq p1, v2, :cond_6

    .line 226
    .line 227
    goto/16 :goto_4

    .line 228
    .line 229
    :cond_6
    :try_start_b
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 230
    .line 231
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 232
    .line 233
    .line 234
    move-result v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 235
    if-eqz v2, :cond_1

    .line 236
    .line 237
    :try_start_c
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->b()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 238
    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :pswitch_b
    if-eqz p1, :cond_8

    .line 243
    .line 244
    if-eq p1, v6, :cond_7

    .line 245
    .line 246
    goto/16 :goto_4

    .line 247
    .line 248
    :cond_7
    :try_start_d
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->b()V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_4

    .line 252
    .line 253
    :cond_8
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 254
    .line 255
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :pswitch_c
    if-eqz p1, :cond_b

    .line 262
    .line 263
    if-eq p1, v8, :cond_9

    .line 264
    .line 265
    packed-switch p1, :pswitch_data_4

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->c()Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_a

    .line 274
    .line 275
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-interface {v2}, Lorg/eclipse/jetty/client/h;->g()V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_4

    .line 283
    .line 284
    :cond_a
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 285
    .line 286
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    :cond_b
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 293
    .line 294
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    :pswitch_d
    packed-switch p1, :pswitch_data_5

    .line 301
    .line 302
    .line 303
    :goto_3
    move v2, v0

    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :pswitch_e
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 307
    .line 308
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :pswitch_f
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/j;->d(II)Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    goto/16 :goto_1

    .line 319
    .line 320
    :pswitch_10
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 321
    .line 322
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 323
    .line 324
    .line 325
    move-result v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 326
    if-eqz v2, :cond_1

    .line 327
    .line 328
    :try_start_e
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-interface {v4}, Lorg/eclipse/jetty/client/h;->k()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    .line 333
    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :pswitch_11
    packed-switch p1, :pswitch_data_6

    .line 338
    .line 339
    .line 340
    :pswitch_12
    goto :goto_3

    .line 341
    :pswitch_13
    :try_start_f
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 342
    .line 343
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    goto/16 :goto_1

    .line 348
    .line 349
    :pswitch_14
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/j;->d(II)Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :pswitch_15
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 356
    .line 357
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 358
    .line 359
    .line 360
    move-result v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 361
    if-eqz v2, :cond_1

    .line 362
    .line 363
    :try_start_10
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-interface {v4}, Lorg/eclipse/jetty/client/h;->c()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    .line 368
    .line 369
    .line 370
    goto/16 :goto_1

    .line 371
    .line 372
    :pswitch_16
    if-eq p1, v7, :cond_c

    .line 373
    .line 374
    packed-switch p1, :pswitch_data_7

    .line 375
    .line 376
    .line 377
    goto :goto_3

    .line 378
    :pswitch_17
    :try_start_11
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/j;->d(II)Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    goto/16 :goto_1

    .line 383
    .line 384
    :cond_c
    :pswitch_18
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 385
    .line 386
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    goto/16 :goto_1

    .line 391
    .line 392
    :pswitch_19
    if-eq p1, v8, :cond_e

    .line 393
    .line 394
    if-eq p1, v7, :cond_d

    .line 395
    .line 396
    packed-switch p1, :pswitch_data_8

    .line 397
    .line 398
    .line 399
    goto :goto_3

    .line 400
    :pswitch_1a
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 401
    .line 402
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    goto/16 :goto_1

    .line 407
    .line 408
    :pswitch_1b
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/j;->d(II)Z

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :cond_d
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 415
    .line 416
    const/16 v4, 0xc

    .line 417
    .line 418
    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    goto/16 :goto_1

    .line 423
    .line 424
    :cond_e
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 425
    .line 426
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 427
    .line 428
    .line 429
    move-result v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    .line 430
    if-eqz v2, :cond_1

    .line 431
    .line 432
    :try_start_12
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-interface {v4}, Lorg/eclipse/jetty/client/h;->g()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    .line 437
    .line 438
    .line 439
    goto/16 :goto_1

    .line 440
    .line 441
    :pswitch_1c
    if-eq p1, v2, :cond_f

    .line 442
    .line 443
    packed-switch p1, :pswitch_data_9

    .line 444
    .line 445
    .line 446
    goto/16 :goto_3

    .line 447
    .line 448
    :pswitch_1d
    :try_start_13
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/j;->d(II)Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    goto/16 :goto_1

    .line 453
    .line 454
    :cond_f
    :pswitch_1e
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 455
    .line 456
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    goto/16 :goto_1

    .line 461
    .line 462
    :pswitch_1f
    if-eq p1, v4, :cond_10

    .line 463
    .line 464
    packed-switch p1, :pswitch_data_a

    .line 465
    .line 466
    .line 467
    goto/16 :goto_3

    .line 468
    .line 469
    :pswitch_20
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/j;->d(II)Z

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    goto/16 :goto_1

    .line 474
    .line 475
    :cond_10
    :pswitch_21
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 476
    .line 477
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :pswitch_22
    if-eqz p1, :cond_11

    .line 484
    .line 485
    if-eq p1, v9, :cond_11

    .line 486
    .line 487
    if-eq p1, v4, :cond_11

    .line 488
    .line 489
    packed-switch p1, :pswitch_data_b

    .line 490
    .line 491
    .line 492
    goto/16 :goto_3

    .line 493
    .line 494
    :pswitch_23
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/j;->d(II)Z

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    goto/16 :goto_1

    .line 499
    .line 500
    :cond_11
    :pswitch_24
    iget-object v2, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 501
    .line 502
    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    goto/16 :goto_1

    .line 507
    .line 508
    :goto_4
    :pswitch_25
    if-nez v0, :cond_13

    .line 509
    .line 510
    if-eqz v9, :cond_12

    .line 511
    .line 512
    goto :goto_5

    .line 513
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 514
    .line 515
    new-instance v4, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-static {v1}, Lorg/eclipse/jetty/client/j;->toState(I)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-static {p1}, Lorg/eclipse/jetty/client/j;->toState(I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object p1

    .line 541
    invoke-direct {v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    throw v2

    .line 545
    :cond_13
    :goto_5
    sget-object v1, Lorg/eclipse/jetty/client/j;->LOG:LR1/c;

    .line 546
    .line 547
    const-string v2, "setStatus {} {}"

    .line 548
    .line 549
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    invoke-interface {v1, v2, p1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    .line 558
    .line 559
    .line 560
    return v0

    .line 561
    :goto_6
    sget-object v1, Lorg/eclipse/jetty/client/j;->LOG:LR1/c;

    .line 562
    .line 563
    invoke-interface {v1, p1}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 564
    .line 565
    .line 566
    return v0

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    :pswitch_data_5
    .packed-switch 0x7
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
    .end packed-switch

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :pswitch_data_6
    .packed-switch 0x6
        :pswitch_15
        :pswitch_12
        :pswitch_14
        :pswitch_13
        :pswitch_13
    .end packed-switch

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    :pswitch_data_7
    .packed-switch 0x8
        :pswitch_17
        :pswitch_18
        :pswitch_18
    .end packed-switch

    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    :pswitch_data_8
    .packed-switch 0x8
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :pswitch_data_9
    .packed-switch 0x8
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :pswitch_data_a
    .packed-switch 0x8
        :pswitch_20
        :pswitch_21
        :pswitch_21
    .end packed-switch

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    :pswitch_data_b
    .packed-switch 0x8
        :pswitch_23
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method public setTimeout(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/eclipse/jetty/client/j;->_timeout:J

    .line 2
    .line 3
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/j;->setRequestURI(Ljava/lang/String;)V

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    sget-object v0, Lorg/eclipse/jetty/client/j;->LOG:LR1/c;

    invoke-interface {v0}, LR1/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "URI = {}"

    invoke-interface {v0, v2, v1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-gtz v1, :cond_2

    .line 8
    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1bb

    goto :goto_0

    :cond_1
    const/16 v1, 0x50

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/j;->setScheme(Ljava/lang/String;)V

    .line 10
    new-instance v0, Lorg/eclipse/jetty/client/b;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jetty/client/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/j;->setAddress(Lorg/eclipse/jetty/client/b;)V

    .line 11
    new-instance v0, Lorg/eclipse/jetty/http/o;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/http/o;-><init>(Ljava/net/URI;)V

    .line 12
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/o;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 13
    const-string p1, "/"

    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/j;->setRequestURI(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opaque URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!Absolute URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/j;->setURI(Ljava/net/URI;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/eclipse/jetty/client/j;->_version:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/eclipse/jetty/http/p;->a:LL1/e;

    invoke-virtual {v0, p1}, LL1/e;->c(Ljava/lang/String;)LL1/e$a;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lorg/eclipse/jetty/client/j;->_version:I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, LL1/e$a;->h()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jetty/client/j;->_version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/eclipse/jetty/client/j;->toState(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v10

    .line 13
    iget-wide v0, p0, Lorg/eclipse/jetty/client/j;->_lastStateChange:J

    .line 14
    .line 15
    sub-long v0, v10, v0

    .line 16
    .line 17
    iget v2, p0, Lorg/eclipse/jetty/client/j;->_lastState:I

    .line 18
    .line 19
    if-ltz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    move-wide v4, v0

    .line 38
    move-object v1, v2

    .line 39
    move-object v2, v3

    .line 40
    iget-object v3, p0, Lorg/eclipse/jetty/client/j;->_method:Ljava/lang/String;

    .line 41
    .line 42
    move-wide v7, v4

    .line 43
    iget-object v4, p0, Lorg/eclipse/jetty/client/j;->_address:Lorg/eclipse/jetty/client/b;

    .line 44
    .line 45
    iget-object v5, p0, Lorg/eclipse/jetty/client/j;->_uri:Ljava/lang/String;

    .line 46
    .line 47
    iget v0, p0, Lorg/eclipse/jetty/client/j;->_lastState:I

    .line 48
    .line 49
    invoke-static {v0}, Lorg/eclipse/jetty/client/j;->toState(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget v9, p0, Lorg/eclipse/jetty/client/j;->_lastStatePeriod:I

    .line 54
    .line 55
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    move-wide v12, v7

    .line 60
    move-object v7, v9

    .line 61
    move-wide v8, v12

    .line 62
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    move-object v8, v6

    .line 67
    move-object v6, v0

    .line 68
    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "%s@%x=%s//%s%s#%s(%dms)->%s(%dms)"

    .line 73
    .line 74
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move-wide v8, v0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v3, p0, Lorg/eclipse/jetty/client/j;->_method:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v4, p0, Lorg/eclipse/jetty/client/j;->_address:Lorg/eclipse/jetty/client/b;

    .line 99
    .line 100
    iget-object v5, p0, Lorg/eclipse/jetty/client/j;->_uri:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v1, "%s@%x=%s//%s%s#%s(%dms)"

    .line 111
    .line 112
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    const/4 v2, 0x3

    .line 121
    if-lt v1, v2, :cond_1

    .line 122
    .line 123
    iget-wide v1, p0, Lorg/eclipse/jetty/client/j;->_sent:J

    .line 124
    .line 125
    const-wide/16 v3, 0x0

    .line 126
    .line 127
    cmp-long v1, v1, v3

    .line 128
    .line 129
    if-lez v1, :cond_1

    .line 130
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, "sent="

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-wide v2, p0, Lorg/eclipse/jetty/client/j;->_sent:J

    .line 145
    .line 146
    sub-long/2addr v10, v2

    .line 147
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, "ms"

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :cond_1
    return-object v0
.end method

.method public waitForDone()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/j;->isDone()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/j;->_status:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    monitor-exit p0

    .line 21
    return v0

    .line 22
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v0
.end method

.method public waitForStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method
