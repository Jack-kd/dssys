.class public Lcom/ubix/ssp/ad/e/w/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/w/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/ubix/ssp/ad/e/w/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/ubix/ssp/ad/e/w/c$a;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/ubix/ssp/ad/core/monitor/data/c/b;

.field private e:Lcom/ubix/ssp/ad/e/w/n;

.field private final f:[I

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/w/c;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/w/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->f:[I

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/c;->c:Landroid/content/Context;

    invoke-static {}, Lcom/ubix/ssp/ad/core/monitor/data/c/b;->b()Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/c;->d:Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    new-instance p1, Lcom/ubix/ssp/ad/e/w/c$a;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/e/w/c$a;-><init>(Lcom/ubix/ssp/ad/e/w/c;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    return-void

    :array_0
    .array-data 4
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
    .end array-data
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/w/c;)Lcom/ubix/ssp/ad/core/monitor/data/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/w/c;->d:Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/w/n;)Lcom/ubix/ssp/ad/e/w/c;
    .locals 2

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/w/c;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/e/w/c;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/w/c;-><init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/w/n;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/ubix/ssp/ad/e/w/c;

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Landroid/os/Message;)V
    .locals 7

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->g(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/c;->d:Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/core/monitor/data/c/b;->c()I

    move-result p1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/n;->g()I

    move-result v1

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/c;->d:Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    monitor-enter p1

    :try_start_1
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c;->d:Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    const-string v2, "events"

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3}, Lcom/ubix/ssp/ad/core/monitor/data/c/b;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    aget-object v2, v1, p1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rawMessage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    invoke-virtual {v6}, Lcom/ubix/ssp/ad/e/w/n;->k()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1, p1}, Lcom/ubix/ssp/ad/e/w/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput p1, p0, Lcom/ubix/ssp/ad/e/w/c;->g:I

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/w/c;->h:Z
    :try_end_2
    .catch Lcom/ubix/ssp/ad/e/w/r/a; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/ubix/ssp/ad/e/w/r/b; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception v1

    goto/16 :goto_8

    :cond_3
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "----\u57cb\u70b9"

    invoke-static {p1, v5}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/c;->d:Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    invoke-virtual {p1, v2}, Lcom/ubix/ssp/ad/core/monitor/data/c/b;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/w/n;->g()I

    move-result v2

    if-lt p1, v2, :cond_5

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;)V

    goto :goto_2

    :cond_5
    if-lez p1, :cond_6

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/w/n;->h()I

    move-result v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;J)V

    :cond_6
    :goto_2
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Events flushed. [left = %s]"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string v0, "----\u57cb\u70b9"

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :goto_4
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_9

    :catchall_1
    move-exception v1

    goto/16 :goto_b

    :goto_5
    :try_start_4
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/w/r/b;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/ubix/ssp/ad/e/w/c;->a(I)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResponseErrorException: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "----\u57cb\u70b9"

    invoke-static {v3, p1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v1, :cond_a

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/c;->d:Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    invoke-virtual {p1, v2}, Lcom/ubix/ssp/ad/core/monitor/data/c/b;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/w/n;->g()I

    move-result v2

    if-lt p1, v2, :cond_8

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;)V

    goto :goto_6

    :cond_8
    if-lez p1, :cond_9

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/w/n;->h()I

    move-result v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;J)V

    :cond_9
    :goto_6
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Events flushed. [left = %s]"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :catchall_2
    move-exception p1

    move v3, v1

    :goto_7
    move-object v1, p1

    move p1, v3

    goto :goto_b

    :goto_8
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    const-string v0, "----\u57cb\u70b9"

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/w/c;->c()V

    :goto_a
    return-void

    :goto_b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "----\u57cb\u70b9"

    invoke-static {v3, v5}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/c;->d:Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    invoke-virtual {p1, v2}, Lcom/ubix/ssp/ad/core/monitor/data/c/b;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/w/n;->g()I

    move-result v3

    if-ge p1, v3, :cond_c

    if-lez p1, :cond_d

    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/w/n;->h()I

    move-result v0

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;J)V

    goto :goto_c

    :cond_c
    iput v0, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    invoke-virtual {v0, v2}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;)V

    :cond_d
    :goto_c
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Events flushed. [left = %s]"

    invoke-static {v0, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "----\u57cb\u70b9"

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_e
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/w/c;->c()V

    :goto_d
    throw v1

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catch_3
    move-exception p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/w/c;Landroid/os/Message;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/w/c;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 7
    const-string v0, "----\u57cb\u70b9"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    :try_start_2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-eqz p4, :cond_3

    :try_start_3
    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 8
    const/4 p3, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/x-protobuf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "POST"

    const/16 v2, 0x2710

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v0, v3}, Lcom/ubix/ssp/ad/e/x/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->f(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_4

    :catch_0
    move-exception p2

    goto/16 :goto_5

    :catch_1
    move-exception p2

    goto/16 :goto_7

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v0, p3

    goto/16 :goto_9

    :catch_2
    move-exception p2

    move-object v0, p3

    goto/16 :goto_6

    :catch_3
    move-exception p2

    move-object v0, p3

    goto/16 :goto_8

    :cond_1
    move-object v1, p3

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_4
    :try_start_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/c;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u57cb\u70b9response="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/h;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    const/16 v2, 0x12c

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u57cb\u70b9\u6c47\u62a5\u6210\u529f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff1b"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    new-instance p2, Lcom/ubix/ssp/ad/e/w/r/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/ubix/ssp/ad/e/w/r/a;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_3
    :goto_3
    invoke-direct {p0, v1, p3, p3, p1}, Lcom/ubix/ssp/ad/e/w/c;->a(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    return-void

    :catchall_2
    move-exception p2

    goto :goto_9

    :catch_5
    move-exception p2

    goto :goto_6

    :catch_6
    move-exception p2

    goto :goto_8

    :catchall_3
    move-exception p2

    move-object p1, p3

    goto :goto_4

    :catch_7
    move-exception p2

    move-object p1, p3

    goto :goto_5

    :catch_8
    move-exception p2

    move-object p1, p3

    goto :goto_7

    :goto_4
    move-object v0, p3

    move-object v1, v0

    goto :goto_9

    :goto_5
    move-object v0, p3

    move-object v1, v0

    :goto_6
    :try_start_7
    new-instance v2, Lcom/ubix/ssp/ad/e/w/r/a;

    invoke-direct {v2, p2}, Lcom/ubix/ssp/ad/e/w/r/a;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_7
    move-object v0, p3

    move-object v1, v0

    :goto_8
    new-instance v2, Lcom/ubix/ssp/ad/e/w/r/a;

    invoke-direct {v2, p2}, Lcom/ubix/ssp/ad/e/w/r/a;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_9
    invoke-direct {p0, v1, p3, v0, p1}, Lcom/ubix/ssp/ad/e/w/c;->a(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    throw p2
.end method

.method private a(I)Z
    .locals 1

    .line 10
    const/16 v0, 0x194

    if-eq p1, v0, :cond_1

    const/16 v0, 0x193

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x258

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 6

    .line 11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/w/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/w/c;->g:I

    return p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/w/c;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/e/w/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/w/c;->g:I

    return v0
.end method

.method private c()V
    .locals 5

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/c;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/c;->h:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->f:[I

    iget v1, p0, Lcom/ubix/ssp/ad/e/w/c;->g:I

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----\u57cb\u70b9"

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/e/w/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/w/c;->h:Z

    return p0
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/e/w/c;)[I
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/w/c;->f:[I

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    invoke-virtual {v1, v0, p1, p2}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;J)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/w/n;->h()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/c;->d:Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->d:Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    invoke-virtual {v0, p2}, Lcom/ubix/ssp/ad/core/monitor/data/c/b;->a(Lorg/json/JSONObject;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enqueue the event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "----\u57cb\u70b9"

    invoke-static {v1, p2}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/n;->g()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x3

    iput v0, p2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    invoke-virtual {v0, p2}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    iput v0, p2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/c;->e:Lcom/ubix/ssp/ad/e/w/n;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/w/n;->h()I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;J)V

    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enqueueEventMessage error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "----\u57cb\u70b9"

    invoke-static {p2, p1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c;->b:Lcom/ubix/ssp/ad/e/w/c$a;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/w/c$a;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method
