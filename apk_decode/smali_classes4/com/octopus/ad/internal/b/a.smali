.class public Lcom/octopus/ad/internal/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/b/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final c:Lcom/octopus/ad/internal/b/f;


# instance fields
.field private b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/octopus/ad/internal/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/octopus/ad/internal/d;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z

.field private volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/b/f;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/octopus/ad/internal/b/a;->c:Lcom/octopus/ad/internal/b/f;

    .line 8
    .line 9
    const-string v0, "emulator"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/c/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/octopus/ad/internal/b/a;->a:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/octopus/ad/internal/b/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/octopus/ad/internal/b/a;->h:J

    return-wide p1
.end method

.method public static synthetic a(Ljava/util/ArrayList;)Lcom/octopus/ad/internal/b/f;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/octopus/ad/internal/b/a;->b(Ljava/util/ArrayList;)Lcom/octopus/ad/internal/b/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/octopus/ad/internal/b/a;->d:Lcom/octopus/ad/internal/d;

    return-object p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/a;Ljava/net/HttpURLConnection;[B)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/b/a;->a(Ljava/net/HttpURLConnection;[B)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/net/HttpURLConnection;[B)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "Accept"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/octopus/ad/internal/c/t;->a()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const-string v1, "Cookie"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    array-length v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connect-Length"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 153
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 154
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 155
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/a;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/a;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 139
    sget v0, Lcom/octopus/ad/internal/q;->w:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 140
    sget v0, Lcom/octopus/ad/internal/q;->x:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 142
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 144
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/e;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/e;->a(I)V

    .line 25
    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/c/f;->a()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;[BZLjava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[BZ",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/ArrayList<",
            "Lcom/octopus/ad/internal/b/f;",
            ">;)V"
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/octopus/ad/internal/b/a$2;

    move-object v1, p0

    move-object v5, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/octopus/ad/internal/b/a$2;-><init>(Lcom/octopus/ad/internal/b/a;Ljava/lang/String;[BZLandroid/content/Context;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnThreadPool(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/a;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/a;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/a;Landroid/content/Context;Ljava/lang/String;[BZLjava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p6}, Lcom/octopus/ad/internal/b/a;->a(Landroid/content/Context;Ljava/lang/String;[BZLjava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/a;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/a;ZLjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/b/a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 5

    .line 159
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/octopus/ad/AdRequest$Builder;

    invoke-direct {v1}, Lcom/octopus/ad/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/octopus/ad/AdRequest$Builder;->build()Lcom/octopus/ad/AdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/AdRequest;->a()Lcom/octopus/ad/internal/b/a$a;

    move-result-object v1

    .line 162
    new-instance v2, Lcom/octopus/ad/internal/e/g;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4}, Lcom/octopus/ad/internal/e/g;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2, p0}, Lcom/octopus/ad/internal/e/a;->setAdSlotId(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2, p1}, Lcom/octopus/ad/internal/e/a;->setIsS2SBoost(Z)V

    const/4 p0, 0x1

    .line 165
    invoke-virtual {v2, p0}, Lcom/octopus/ad/internal/e/a;->setIsBoost(Z)V

    .line 166
    invoke-virtual {v2, v1}, Lcom/octopus/ad/internal/e/g;->a(Lcom/octopus/ad/internal/b/a$a;)Z

    .line 167
    invoke-virtual {v2, p0}, Lcom/octopus/ad/internal/e/a;->c(Z)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/a;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/a;->k:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/b/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/internal/b/a;->g:I

    return p1
.end method

.method public static synthetic b()Lcom/octopus/ad/internal/b/f;
    .locals 1

    .line 3
    sget-object v0, Lcom/octopus/ad/internal/b/a;->c:Lcom/octopus/ad/internal/b/f;

    return-object v0
.end method

.method private static b(Ljava/util/ArrayList;)Lcom/octopus/ad/internal/b/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/octopus/ad/internal/b/f;",
            ">;)",
            "Lcom/octopus/ad/internal/b/f;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/octopus/ad/internal/b/f;

    if-nez v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v3}, Lcom/octopus/ad/internal/b/f;->B()I

    move-result v4

    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/f;->B()I

    move-result v5

    if-le v4, v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v3}, Lcom/octopus/ad/internal/b/f;->q()I

    move-result v4

    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/f;->q()I

    move-result v5

    if-le v4, v5, :cond_0

    :goto_1
    move-object v1, v3

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/b/a;)Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/octopus/ad/internal/b/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Lcom/octopus/ad/internal/b/f;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/f;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/a;->a(Ljava/lang/String;Z)V

    .line 14
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/f;->g()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 17
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    .line 18
    invoke-static {v3, v1}, Lcom/octopus/ad/internal/b/a;->a(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 9

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a;->d:Lcom/octopus/ad/internal/d;

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/octopus/ad/internal/l;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/octopus/ad/internal/b/a;->d:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->e()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/octopus/ad/internal/b/a;->d:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->h()J

    move-result-wide v7

    sub-long/2addr v5, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "80003 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v2, "TIMEOUT"

    invoke-direct/range {v1 .. v7}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    invoke-static {v1}, Lcom/octopus/ad/internal/o;->a(Lcom/octopus/ad/internal/l;)V

    :cond_0
    return-void
.end method

.method private b(I)Z
    .locals 1

    .line 1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/b/a;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/a;->j:Z

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/b/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/b/a;->h:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/b/a;I)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/a;->b(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/b/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/internal/b/a;->g:I

    return p0
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/b/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/internal/b/a;->f:I

    return p1
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/b/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/a;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic f(Lcom/octopus/ad/internal/b/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/b/a;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic g(Lcom/octopus/ad/internal/b/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/a;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/octopus/ad/internal/b/a;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/a;->b:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lcom/octopus/ad/internal/d;Z)Ljava/lang/String;
    .locals 11

    .line 35
    const-string v0, "OctopusGroup"

    const-string v1, ""

    :try_start_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object v2

    .line 36
    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->q()Lcom/octopus/ad/internal/p;

    move-result-object v3

    sget-object v4, Lcom/octopus/ad/internal/p;->h:Lcom/octopus/ad/internal/p;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 37
    :goto_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v4

    .line 38
    invoke-static {}, Lcom/octopus/ad/internal/c/a;->a()Lcom/octopus/ad/internal/c/a;

    move-result-object v5

    .line 39
    new-instance v6, Lcom/octopus/ad/a/f$a$a;

    invoke-direct {v6}, Lcom/octopus/ad/a/f$a$a;-><init>()V

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->a(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/internal/c/a;->o:Ljava/lang/String;

    .line 41
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->l(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/internal/c/a;->p:Ljava/lang/String;

    .line 42
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->m(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    .line 43
    invoke-static {v2}, Lcom/octopus/ad/d/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->b(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    .line 44
    invoke-static {v2}, Lcom/octopus/ad/d/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->n(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    .line 45
    invoke-static {}, Lcom/octopus/ad/d/b/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->q(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    .line 46
    invoke-static {v2}, Lcom/octopus/ad/d/b/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->p(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    .line 47
    invoke-static {v2}, Lcom/octopus/ad/d/b/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->s(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    .line 48
    invoke-static {v2}, Lcom/octopus/ad/d/b/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->r(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->s:Ljava/lang/String;

    .line 49
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->t(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->t:Ljava/lang/String;

    .line 50
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->u(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    .line 51
    invoke-virtual {v6, v1}, Lcom/octopus/ad/a/f$a$a;->c(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->h:Ljava/lang/String;

    .line 52
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->d(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/a/g$e;->c:Lcom/octopus/ad/a/g$e;

    .line 53
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->a(Lcom/octopus/ad/a/g$e;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->i:Lcom/octopus/ad/a/g$b;

    .line 54
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->a(Lcom/octopus/ad/a/g$b;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->j:Ljava/lang/String;

    .line 55
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->e(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->k:Ljava/lang/String;

    .line 56
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->f(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->l:Ljava/lang/String;

    .line 57
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->g(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->m:Ljava/lang/String;

    .line 58
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->h(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->n:Ljava/lang/String;

    .line 59
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->i(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->q:Ljava/lang/String;

    .line 60
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->j(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->r:Ljava/lang/String;

    .line 61
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->k(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->e:Ljava/lang/String;

    .line 62
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->o(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->w:Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->v(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->x:Ljava/lang/String;

    .line 64
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->w(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->y:Ljava/lang/String;

    .line 65
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->x(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->z:Ljava/lang/String;

    .line 66
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->y(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->A:Ljava/lang/String;

    .line 67
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->z(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->B:Ljava/lang/String;

    .line 68
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->A(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->C:Ljava/lang/String;

    .line 69
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->B(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->D:Ljava/lang/String;

    .line 70
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->C(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-boolean v7, v5, Lcom/octopus/ad/internal/c/a;->E:Z

    .line 71
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->a(Z)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/internal/c/a;->u:Ljava/lang/String;

    .line 72
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->D(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    sget-object v7, Lcom/octopus/ad/internal/c/a;->v:Ljava/lang/String;

    .line 73
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->E(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-object v7, v5, Lcom/octopus/ad/internal/c/a;->F:Ljava/lang/String;

    .line 74
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->F(Ljava/lang/String;)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-boolean v7, v5, Lcom/octopus/ad/internal/c/a;->f:Z

    .line 75
    invoke-virtual {v6, v7}, Lcom/octopus/ad/a/f$a$a;->b(Z)Lcom/octopus/ad/a/f$a$a;

    move-result-object v6

    iget-boolean v5, v5, Lcom/octopus/ad/internal/c/a;->g:Z

    .line 76
    invoke-virtual {v6, v5}, Lcom/octopus/ad/a/f$a$a;->c(Z)Lcom/octopus/ad/a/f$a$a;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lcom/octopus/ad/a/f$a$a;->a()Lcom/octopus/ad/a/f$a;

    move-result-object v5

    .line 78
    invoke-static {}, Lcom/octopus/ad/internal/c/r;->a()Lcom/octopus/ad/internal/c/r;

    move-result-object v6

    .line 79
    new-instance v7, Lcom/octopus/ad/a/f$c$a;

    invoke-direct {v7}, Lcom/octopus/ad/a/f$c$a;-><init>()V

    iget-object v8, v6, Lcom/octopus/ad/internal/c/r;->a:Lcom/octopus/ad/a/g$d;

    .line 80
    invoke-virtual {v7, v8}, Lcom/octopus/ad/a/f$c$a;->a(Lcom/octopus/ad/a/g$d;)Lcom/octopus/ad/a/f$c$a;

    move-result-object v7

    iget-object v6, v6, Lcom/octopus/ad/internal/c/r;->b:Lcom/octopus/ad/a/g$c;

    .line 81
    invoke-virtual {v7, v6}, Lcom/octopus/ad/a/f$c$a;->a(Lcom/octopus/ad/a/g$c;)Lcom/octopus/ad/a/f$c$a;

    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lcom/octopus/ad/a/f$c$a;->a()Lcom/octopus/ad/a/f$c;

    move-result-object v6

    .line 83
    new-instance v7, Lcom/octopus/ad/a/f$b;

    invoke-direct {v7}, Lcom/octopus/ad/a/f$b;-><init>()V

    .line 84
    invoke-static {}, Lcom/octopus/ad/internal/c/l;->a()Lcom/octopus/ad/internal/c/l;

    move-result-object v8

    .line 85
    iget-object v8, v8, Lcom/octopus/ad/internal/c/l;->b:Lcom/octopus/ad/model/OctLocation;

    invoke-virtual {v7, v8}, Lcom/octopus/ad/a/f$b;->a(Lcom/octopus/ad/model/OctLocation;)V

    .line 86
    invoke-virtual {v4}, Lcom/octopus/ad/internal/q;->k()Ljava/lang/String;

    move-result-object v8

    .line 87
    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 88
    invoke-virtual {v4}, Lcom/octopus/ad/internal/q;->i()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v4}, Lcom/octopus/ad/internal/q;->j()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    move-object v8, v4

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/b/a;->e:Ljava/lang/String;

    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/b/a;->e:Ljava/lang/String;

    .line 95
    :goto_2
    new-instance v0, Lcom/octopus/ad/a/b$b$a;

    invoke-direct {v0}, Lcom/octopus/ad/a/b$b$a;-><init>()V

    const-string v4, "2.6.5.7"

    .line 96
    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->a(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 97
    invoke-static {v2}, Lcom/octopus/ad/d/b/i;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->b(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 98
    invoke-static {v2}, Lcom/octopus/ad/d/b/i;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->c(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    sget-object v4, Lcom/octopus/ad/a/g$i;->b:Lcom/octopus/ad/a/g$i;

    .line 99
    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->a(Lcom/octopus/ad/a/g$i;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 100
    invoke-static {v2}, Lcom/octopus/ad/internal/c/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->f(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    if-eqz v3, :cond_4

    .line 101
    sget-object v4, Lcom/octopus/ad/a/g$g;->c:Lcom/octopus/ad/a/g$g;

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/octopus/ad/a/g$g;->b:Lcom/octopus/ad/a/g$g;

    :goto_3
    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->a(Lcom/octopus/ad/a/g$g;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/octopus/ad/a/b$b$a;->a(J)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v8}, Lcom/octopus/ad/a/b$b$a;->d(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    iget-object v4, p0, Lcom/octopus/ad/internal/b/a;->e:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->e(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    iget v4, p0, Lcom/octopus/ad/internal/b/a;->f:I

    .line 105
    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->a(I)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v5}, Lcom/octopus/ad/a/b$b$a;->a(Lcom/octopus/ad/a/f$a;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v6}, Lcom/octopus/ad/a/b$b$a;->a(Lcom/octopus/ad/a/f$c;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v7}, Lcom/octopus/ad/a/b$b$a;->a(Lcom/octopus/ad/a/f$b;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 109
    invoke-static {v2}, Lcom/octopus/ad/d/b/i;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->f(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 110
    invoke-static {v2}, Lcom/octopus/ad/d/b/i;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->g(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 111
    invoke-static {v2}, Lcom/octopus/ad/d/b/i;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->h(Ljava/lang/String;)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 112
    invoke-static {v2}, Lcom/octopus/ad/d/b/i;->a(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/octopus/ad/a/b$b$a;->b(J)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 113
    invoke-static {v2}, Lcom/octopus/ad/d/b/i;->c(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/octopus/ad/a/b$b$a;->c(J)Lcom/octopus/ad/a/b$b$a;

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 115
    invoke-virtual {v4}, Lcom/octopus/ad/OctopusAdSdkController;->isCanShake()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/octopus/ad/a/b$b$a;->a(Z)Lcom/octopus/ad/a/b$b$a;

    .line 116
    invoke-virtual {v4}, Lcom/octopus/ad/OctopusAdSdkController;->getShakeValue()Lcom/octopus/ad/model/ShakeValue;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 117
    invoke-virtual {v4}, Lcom/octopus/ad/OctopusAdSdkController;->getShakeValue()Lcom/octopus/ad/model/ShakeValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->a(Lcom/octopus/ad/model/ShakeValue;)Lcom/octopus/ad/a/b$b$a;

    :cond_5
    if-eqz v3, :cond_7

    .line 118
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/octopus/ad/internal/q;->t()Ljava/util/HashSet;

    move-result-object v3

    .line 119
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 120
    invoke-static {v4}, Lcom/octopus/ad/internal/c/p;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 121
    new-instance v5, Lcom/octopus/ad/a/b$a$a;

    invoke-direct {v5}, Lcom/octopus/ad/a/b$a$a;-><init>()V

    .line 122
    invoke-virtual {v5, v4}, Lcom/octopus/ad/a/b$a$a;->a(Ljava/lang/String;)Lcom/octopus/ad/a/b$a$a;

    move-result-object v4

    .line 123
    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/octopus/ad/a/b$a$a;->c(Ljava/lang/String;)Lcom/octopus/ad/a/b$a$a;

    move-result-object v4

    .line 124
    invoke-virtual {v4}, Lcom/octopus/ad/a/b$a$a;->a()Lcom/octopus/ad/a/b$a;

    move-result-object v4

    .line 125
    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/b$b$a;->a(Lcom/octopus/ad/a/b$a;)V

    goto :goto_4

    .line 126
    :cond_7
    new-instance v3, Lcom/octopus/ad/a/b$a$a;

    invoke-direct {v3}, Lcom/octopus/ad/a/b$a$a;-><init>()V

    .line 127
    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/a/b$a$a;->a(Ljava/lang/String;)Lcom/octopus/ad/a/b$a$a;

    move-result-object v3

    .line 128
    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/octopus/ad/a/b$a$a;->c(Ljava/lang/String;)Lcom/octopus/ad/a/b$a$a;

    move-result-object v3

    .line 129
    invoke-virtual {p1}, Lcom/octopus/ad/internal/d;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/octopus/ad/a/b$a$a;->b(Ljava/lang/String;)Lcom/octopus/ad/a/b$a$a;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/octopus/ad/a/b$a$a;->a()Lcom/octopus/ad/a/b$a;

    move-result-object p1

    .line 131
    invoke-virtual {v0, p1}, Lcom/octopus/ad/a/b$b$a;->a(Lcom/octopus/ad/a/b$a;)V

    .line 132
    :cond_8
    invoke-virtual {v0}, Lcom/octopus/ad/a/b$b$a;->a()Lcom/octopus/ad/a/b$b;

    move-result-object p1

    .line 133
    const-string v0, "encrypt"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v0, v3}, Lcom/octopus/ad/internal/c/o;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 134
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p2, :cond_9

    goto :goto_5

    .line 135
    :cond_9
    invoke-virtual {p1}, Lcom/octopus/ad/a/b$b;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 136
    :cond_a
    :goto_5
    invoke-static {}, Lcom/octopus/ad/d/b/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/octopus/ad/a/b$b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/octopus/ad/d/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_b

    return-object v1

    :cond_b
    return-object p1

    :catch_0
    return-object v1
.end method

.method public a(Lcom/octopus/ad/internal/b/f;)V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/a;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/a;->l:Z

    .line 158
    new-instance v0, Lcom/octopus/ad/internal/b/a$3;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/b/a$3;-><init>(Lcom/octopus/ad/internal/b/a;Lcom/octopus/ad/internal/b/f;)V

    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/e;)V
    .locals 2

    .line 12
    const-string v0, "OctopusAd_Time"

    const-string v1, "setDelegate"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/a;->b:Ljava/lang/ref/SoftReference;

    .line 14
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->e()V

    .line 16
    invoke-static {p1}, Lcom/octopus/ad/internal/c/b;->a(Landroid/content/Context;)V

    .line 17
    invoke-static {p1}, Lcom/octopus/ad/internal/c/s;->a(Landroid/content/Context;)V

    .line 18
    invoke-static {p1}, Lcom/octopus/ad/internal/c/m;->a(Landroid/content/Context;)V

    .line 19
    invoke-static {p1}, Lcom/octopus/ad/internal/b/g;->a(Landroid/content/Context;)Lcom/octopus/ad/internal/b/g;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/b/g;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x13881

    .line 21
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/a;->a(I)V

    :cond_0
    return-void

    :cond_1
    const p1, 0x13882

    .line 22
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/a;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 26
    const-string v0, "OctopusAd_Time"

    const-string v1, "\u5f00\u59cb\u8bf7\u6c42\u5c01\u88c5\u53c2\u6570"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-wide v0, p0, Lcom/octopus/ad/internal/b/a;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/octopus/ad/internal/b/a;->i:J

    .line 29
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/octopus/ad/internal/b/a;->h:J

    .line 30
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/e;

    .line 31
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 32
    invoke-interface {v0}, Lcom/octopus/ad/internal/e;->b()Lcom/octopus/ad/internal/d;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/b/a;->d:Lcom/octopus/ad/internal/d;

    if-eqz v0, :cond_1

    .line 33
    iget-wide v2, p0, Lcom/octopus/ad/internal/b/a;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/octopus/ad/internal/d;->b(J)V

    .line 34
    new-instance v0, Lcom/octopus/ad/internal/b/a$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/octopus/ad/internal/b/a$1;-><init>(Lcom/octopus/ad/internal/b/a;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnThreadPool(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
