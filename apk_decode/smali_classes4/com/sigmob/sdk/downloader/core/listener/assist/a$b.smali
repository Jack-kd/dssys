.class public Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/listener/assist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:I

.field b:Ljava/lang/Boolean;

.field c:Ljava/lang/Boolean;

.field volatile d:Ljava/lang/Boolean;

.field e:I

.field f:J

.field final g:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iput p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->a:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->f:J

    return-wide v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->e:I

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->f:J

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->b:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->b:Ljava/lang/Boolean;

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->c:Ljava/lang/Boolean;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->c:Ljava/lang/Boolean;

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->d:Ljava/lang/Boolean;

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->d:Ljava/lang/Boolean;

    :cond_3
    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->a:I

    return v0
.end method
