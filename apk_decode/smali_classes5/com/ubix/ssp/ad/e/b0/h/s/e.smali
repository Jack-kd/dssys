.class public abstract Lcom/ubix/ssp/ad/e/b0/h/s/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/b0/h/s/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/b0/h/s/e$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/h/s/e$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/b0/h/s/e$a;-><init>(Lcom/ubix/ssp/ad/e/b0/h/s/e;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/s/e;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/b0/h/s/e;Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/s/e;->b(Ljava/io/File;)V

    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/s/d;->e(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/b0/h/s/d;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/s/e;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/s/e;->a(Ljava/util/List;)J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/ubix/ssp/ad/e/b0/h/s/e;->a(Ljava/io/File;JI)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/s/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/h/s/e$b;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/s/e$b;-><init>(Lcom/ubix/ssp/ad/e/b0/h/s/e;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public abstract a(Ljava/io/File;JI)Z
.end method
