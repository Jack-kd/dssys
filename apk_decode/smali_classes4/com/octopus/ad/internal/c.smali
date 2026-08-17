.class public Lcom/octopus/ad/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/c$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private final d:Lcom/octopus/ad/internal/a;

.field private e:Lcom/octopus/ad/internal/s;

.field private f:Lcom/octopus/ad/internal/c$a;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/octopus/ad/internal/c;->a:I

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/octopus/ad/internal/c;->b:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/octopus/ad/internal/c;->c:J

    .line 12
    .line 13
    sget-object v0, Lcom/octopus/ad/internal/c$a;->a:Lcom/octopus/ad/internal/c$a;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/octopus/ad/internal/c;->f:Lcom/octopus/ad/internal/c$a;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/octopus/ad/internal/c;->g:Z

    .line 19
    .line 20
    iput-object p1, p0, Lcom/octopus/ad/internal/c;->d:Lcom/octopus/ad/internal/a;

    .line 21
    .line 22
    const-string p1, "OctopusAd_Time"

    .line 23
    .line 24
    const-string v0, "AdFetcher \u5f00\u59cb"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/octopus/ad/internal/c;->e:Lcom/octopus/ad/internal/s;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/internal/s;->c()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/octopus/ad/internal/c;->e:Lcom/octopus/ad/internal/s;

    .line 11
    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->stop:I

    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/octopus/ad/internal/c;->c:J

    .line 13
    sget-object v0, Lcom/octopus/ad/internal/c$a;->a:Lcom/octopus/ad/internal/c$a;

    iput-object v0, p0, Lcom/octopus/ad/internal/c;->f:Lcom/octopus/ad/internal/c$a;

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/c;->a:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lcom/octopus/ad/internal/c;->a:I

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/octopus/ad/internal/c;->f:Lcom/octopus/ad/internal/c$a;

    sget-object v0, Lcom/octopus/ad/internal/c$a;->a:Lcom/octopus/ad/internal/c$a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdFetcher refresh mPeriod changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/octopus/ad/internal/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    const-string v0, "Resetting AdFetcher"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/octopus/ad/internal/c;->a()V

    .line 7
    invoke-virtual {p0, p2}, Lcom/octopus/ad/internal/c;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 14
    sget-object v0, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->start:I

    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/octopus/ad/internal/c$1;->a:[I

    iget-object v1, p0, Lcom/octopus/ad/internal/c;->f:Lcom/octopus/ad/internal/c$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 16
    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->fetcher_start_single:I

    .line 17
    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/c;->b(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_1
    iget v0, p0, Lcom/octopus/ad/internal/c;->a:I

    if-gtz v0, :cond_2

    .line 21
    sget-object v0, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->fetcher_start_single:I

    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/c;->b(Ljava/lang/String;)V

    .line 23
    sget-object p1, Lcom/octopus/ad/internal/c$a;->b:Lcom/octopus/ad/internal/c$a;

    iput-object p1, p0, Lcom/octopus/ad/internal/c;->f:Lcom/octopus/ad/internal/c$a;

    return-void

    .line 24
    :cond_2
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/c;->b(Ljava/lang/String;)V

    .line 25
    sget-object p1, Lcom/octopus/ad/internal/c$a;->c:Lcom/octopus/ad/internal/c$a;

    iput-object p1, p0, Lcom/octopus/ad/internal/c;->f:Lcom/octopus/ad/internal/c$a;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/octopus/ad/internal/c;->g:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/octopus/ad/internal/c;->g:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/c;->d:Lcom/octopus/ad/internal/a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/octopus/ad/internal/c;->b:J

    .line 5
    sget-object v0, Lcom/octopus/ad/internal/c$1;->b:[I

    iget-object v1, p0, Lcom/octopus/ad/internal/c;->d:Lcom/octopus/ad/internal/a;

    invoke-interface {v1}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    new-instance v0, Lcom/octopus/ad/internal/r;

    invoke-direct {v0, p1}, Lcom/octopus/ad/internal/r;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/c;->e:Lcom/octopus/ad/internal/s;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 7
    :pswitch_1
    new-instance v0, Lcom/octopus/ad/internal/b/d;

    iget-object v1, p0, Lcom/octopus/ad/internal/c;->d:Lcom/octopus/ad/internal/a;

    check-cast v1, Lcom/octopus/ad/internal/b/c;

    invoke-direct {v0, v1, p1}, Lcom/octopus/ad/internal/b/d;-><init>(Lcom/octopus/ad/internal/b/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/c;->e:Lcom/octopus/ad/internal/s;

    goto :goto_0

    .line 8
    :pswitch_2
    new-instance v0, Lcom/octopus/ad/internal/f;

    iget-object v1, p0, Lcom/octopus/ad/internal/c;->d:Lcom/octopus/ad/internal/a;

    check-cast v1, Lcom/octopus/ad/internal/e/f;

    invoke-direct {v0, v1, p1}, Lcom/octopus/ad/internal/f;-><init>(Lcom/octopus/ad/internal/e/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/c;->e:Lcom/octopus/ad/internal/s;

    goto :goto_0

    .line 9
    :pswitch_3
    new-instance v0, Lcom/octopus/ad/internal/f;

    iget-object v1, p0, Lcom/octopus/ad/internal/c;->d:Lcom/octopus/ad/internal/a;

    check-cast v1, Lcom/octopus/ad/internal/e/g;

    invoke-direct {v0, v1, p1}, Lcom/octopus/ad/internal/f;-><init>(Lcom/octopus/ad/internal/e/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/c;->e:Lcom/octopus/ad/internal/s;

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/c;->e:Lcom/octopus/ad/internal/s;

    invoke-interface {p1}, Lcom/octopus/ad/internal/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    .line 11
    :goto_2
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/octopus/ad/internal/c;->b:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/octopus/ad/internal/c;->c:J

    .line 6
    .line 7
    return-void
.end method
