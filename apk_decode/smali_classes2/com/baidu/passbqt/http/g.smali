.class public Lcom/baidu/passbqt/http/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final d:Ljava/util/concurrent/ThreadFactory;

.field public static final e:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final f:Lcom/baidu/passbqt/http/g;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/baidu/passbqt/http/g;->a:I

    .line 10
    .line 11
    const/16 v1, 0x40

    .line 12
    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    div-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    :goto_0
    move v2, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/16 v0, 0x20

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :goto_1
    sput v2, Lcom/baidu/passbqt/http/g;->b:I

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/baidu/passbqt/http/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    new-instance v8, Lcom/baidu/passbqt/http/f;

    .line 32
    .line 33
    invoke-direct {v8}, Lcom/baidu/passbqt/http/f;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v8, Lcom/baidu/passbqt/http/g;->d:Ljava/util/concurrent/ThreadFactory;

    .line 37
    .line 38
    new-instance v0, Lcom/baidu/passbqt/http/g;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/baidu/passbqt/http/g;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/baidu/passbqt/http/g;->f:Lcom/baidu/passbqt/http/g;

    .line 44
    .line 45
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    .line 47
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    .line 49
    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 50
    .line 51
    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 52
    .line 53
    .line 54
    const-wide/16 v4, 0x3c

    .line 55
    .line 56
    move v3, v2

    .line 57
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 58
    .line 59
    .line 60
    sput-object v1, Lcom/baidu/passbqt/http/g;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/baidu/passbqt/http/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/passbqt/http/g;->f:Lcom/baidu/passbqt/http/g;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/baidu/passbqt/http/j;Lcom/baidu/passbqt/http/c;)Lcom/baidu/passbqt/http/h;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/baidu/passbqt/http/g;->e(Landroid/content/Context;Lcom/baidu/passbqt/http/j;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/baidu/passbqt/http/Method;->a:Lcom/baidu/passbqt/http/Method;

    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/baidu/passbqt/http/g;->d(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/j;Lcom/baidu/passbqt/http/c;)Lcom/baidu/passbqt/http/h;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "get ex="

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string v0, "PASSPORT"

    .line 38
    .line 39
    invoke-static {v0, p2}, Lu/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    if-eqz p3, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p3, p1, p2}, Lcom/baidu/passbqt/http/c;->j(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public final c(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/j;Lcom/baidu/passbqt/http/b;Lcom/baidu/passbqt/http/c;)Lcom/baidu/passbqt/http/h;
    .locals 7

    .line 1
    new-instance v0, Lcom/baidu/passbqt/http/h;

    .line 2
    .line 3
    sget-object v1, Lcom/baidu/passbqt/http/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/baidu/passbqt/http/h;-><init>(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/j;ILcom/baidu/passbqt/http/b;Lcom/baidu/passbqt/http/c;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/baidu/passbqt/http/g;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final d(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/j;Lcom/baidu/passbqt/http/c;)Lcom/baidu/passbqt/http/h;
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/passbqt/http/g;->c(Lcom/baidu/passbqt/http/Method;Landroid/content/Context;Lcom/baidu/passbqt/http/j;Lcom/baidu/passbqt/http/b;Lcom/baidu/passbqt/http/c;)Lcom/baidu/passbqt/http/h;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final e(Landroid/content/Context;Lcom/baidu/passbqt/http/j;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p2, Lcom/baidu/passbqt/http/j;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p2, "paramDTO can\'t be null or paramDTO.url can\'t be empty"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p2, "Invalid context argument"

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method
