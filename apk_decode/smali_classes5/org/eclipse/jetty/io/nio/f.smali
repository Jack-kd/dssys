.class public abstract Lorg/eclipse/jetty/io/nio/f;
.super Lorg/eclipse/jetty/util/component/a;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/nio/f$b;,
        Lorg/eclipse/jetty/io/nio/f$c;,
        Lorg/eclipse/jetty/io/nio/f$d;
    }
.end annotation


# static fields
.field public static final j:LR1/c;

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I


# instance fields
.field public b:I

.field public c:I

.field public d:J

.field public e:[Lorg/eclipse/jetty/io/nio/f$d;

.field public f:I

.field public volatile g:I

.field public h:Z

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "org.eclipse.jetty.io.nio"

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->b(Ljava/lang/String;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 8
    .line 9
    const-string v0, "org.eclipse.jetty.io.nio.MONITOR_PERIOD"

    .line 10
    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sput v0, Lorg/eclipse/jetty/io/nio/f;->k:I

    .line 22
    .line 23
    const-string v0, "org.eclipse.jetty.io.nio.MAX_SELECTS"

    .line 24
    .line 25
    const v1, 0x186a0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sput v0, Lorg/eclipse/jetty/io/nio/f;->l:I

    .line 37
    .line 38
    const-string v0, "org.eclipse.jetty.io.nio.BUSY_PAUSE"

    .line 39
    .line 40
    const/16 v1, 0x32

    .line 41
    .line 42
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sput v0, Lorg/eclipse/jetty/io/nio/f;->m:I

    .line 51
    .line 52
    const-string v0, "org.eclipse.jetty.io.nio.IDLE_TICK"

    .line 53
    .line 54
    const/16 v1, 0x190

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sput v0, Lorg/eclipse/jetty/io/nio/f;->n:I

    .line 65
    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lorg/eclipse/jetty/io/nio/f;->f:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lorg/eclipse/jetty/io/nio/f;->g:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/nio/f;->h:Z

    .line 11
    .line 12
    iput v1, p0, Lorg/eclipse/jetty/io/nio/f;->i:I

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic P(Lorg/eclipse/jetty/io/nio/f;)[Lorg/eclipse/jetty/io/nio/f$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/f;->e:[Lorg/eclipse/jetty/io/nio/f$d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Q()I
    .locals 1

    .line 1
    sget v0, Lorg/eclipse/jetty/io/nio/f;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic R()I
    .locals 1

    .line 1
    sget v0, Lorg/eclipse/jetty/io/nio/f;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic S()I
    .locals 1

    .line 1
    sget v0, Lorg/eclipse/jetty/io/nio/f;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic T()I
    .locals 1

    .line 1
    sget v0, Lorg/eclipse/jetty/io/nio/f;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic U(Lorg/eclipse/jetty/io/nio/f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/f;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic V(Lorg/eclipse/jetty/io/nio/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/eclipse/jetty/io/nio/f;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic W(Lorg/eclipse/jetty/io/nio/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/eclipse/jetty/io/nio/f;->c:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public X(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, ","

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 p3, 0x0

    .line 30
    new-array p3, p3, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-interface {v0, p1, p3}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p2}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public abstract Y(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
.end method

.method public abstract Z(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
.end method

.method public abstract a0(LL1/i;LL1/j;)V
.end method

.method public b0()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/io/nio/f;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public c0()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/io/nio/f;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public d0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/f;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract dispatch(Ljava/lang/Runnable;)Z
.end method

.method public doStart()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/io/nio/f;->f:I

    .line 2
    .line 3
    new-array v0, v0, [Lorg/eclipse/jetty/io/nio/f$d;

    .line 4
    .line 5
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/f;->e:[Lorg/eclipse/jetty/io/nio/f$d;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/f;->e:[Lorg/eclipse/jetty/io/nio/f$d;

    .line 10
    .line 11
    array-length v3, v2

    .line 12
    if-ge v1, v3, :cond_0

    .line 13
    .line 14
    new-instance v3, Lorg/eclipse/jetty/io/nio/f$d;

    .line 15
    .line 16
    invoke-direct {v3, p0, v1}, Lorg/eclipse/jetty/io/nio/f$d;-><init>(Lorg/eclipse/jetty/io/nio/f;I)V

    .line 17
    .line 18
    .line 19
    aput-object v3, v2, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/a;->doStart()V

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/f;->b0()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ge v0, v1, :cond_2

    .line 32
    .line 33
    new-instance v1, Lorg/eclipse/jetty/io/nio/f$a;

    .line 34
    .line 35
    invoke-direct {v1, p0, v0}, Lorg/eclipse/jetty/io/nio/f$a;-><init>(Lorg/eclipse/jetty/io/nio/f;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/nio/f;->dispatch(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v1, "!Selecting"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    return-void
.end method

.method public doStop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f;->e:[Lorg/eclipse/jetty/io/nio/f$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/f;->e:[Lorg/eclipse/jetty/io/nio/f$d;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/f$d;->o()V

    .line 17
    .line 18
    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/a;->doStop()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public abstract e0(Ljava/nio/channels/SocketChannel;LL1/c;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/a;
.end method

.method public abstract f0(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/f$d;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
.end method

.method public g0(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/io/nio/f;->g:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lorg/eclipse/jetty/io/nio/f;->g:I

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    neg-int v0, v0

    .line 10
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/io/nio/f;->f:I

    .line 11
    .line 12
    rem-int/2addr v0, v1

    .line 13
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/f;->e:[Lorg/eclipse/jetty/io/nio/f$d;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    aget-object v0, v1, v0

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/io/nio/f$d;->d(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/f$d;->p()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public m(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1, p0}, Lorg/eclipse/jetty/util/component/b;->T(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f;->e:[Lorg/eclipse/jetty/io/nio/f$d;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/eclipse/jetty/util/n;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Ljava/util/Collection;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v0, v1, v2

    .line 15
    .line 16
    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
