.class public Lcom/sigmob/sdk/downloader/core/listener/assist/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/d;
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;,
        Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/d;",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/e$b<",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/sdk/downloader/core/listener/assist/e<",
            "Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;-><init>(Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;)V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/listener/assist/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/core/listener/assist/e<",
            "Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;-><init>(I)V

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;J)V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->y()Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;

    if-eqz v2, :cond_1

    iget-object p2, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->f:J

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;->a(Lcom/sigmob/sdk/downloader/f;JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->b:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->c:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/cause/b;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    iget-object p2, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->b:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, p3}, Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/b;)V

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->b:Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->c:Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->y()Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->c(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a()Z

    move-result v0

    return v0
.end method

.method public synthetic b(I)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a(I)Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->y()Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->c:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->d:Ljava/lang/Boolean;

    :cond_1
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;

    if-eqz v2, :cond_2

    iget v4, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->e:I

    iget-object v1, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;->f:J

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/sigmob/sdk/downloader/core/listener/assist/a$a;->a(Lcom/sigmob/sdk/downloader/f;IJJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/a;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b(Z)V

    return-void
.end method
