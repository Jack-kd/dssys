.class public Lcom/octopus/ad/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/octopus/ad/internal/c/d$a;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/octopus/ad/internal/u;->a:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/octopus/ad/internal/u;->b:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/octopus/ad/internal/u;->c:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/octopus/ad/internal/u;->d:Ljava/lang/String;

    .line 12
    .line 13
    iput-wide p4, p0, Lcom/octopus/ad/internal/u;->e:J

    .line 14
    .line 15
    iput-object p6, p0, Lcom/octopus/ad/internal/u;->f:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean p8, p0, Lcom/octopus/ad/internal/u;->g:Z

    .line 18
    .line 19
    iput-object p7, p0, Lcom/octopus/ad/internal/u;->i:Ljava/util/ArrayList;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/u;)Lcom/octopus/ad/internal/c/d$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/u;->h:Lcom/octopus/ad/internal/c/d$a;

    return-object p0
.end method

.method private a(I)V
    .locals 9

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/u;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/octopus/ad/internal/u;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/octopus/ad/internal/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    const-string v0, "imp"

    iget-object v1, p0, Lcom/octopus/ad/internal/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IMPSUC"

    :goto_0
    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    const-string v0, "CLKSUC"

    goto :goto_0

    .line 15
    :goto_1
    new-instance v1, Lcom/octopus/ad/internal/l;

    iget-object v3, p0, Lcom/octopus/ad/internal/u;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/octopus/ad/internal/u;->d:Ljava/lang/String;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/octopus/ad/internal/u;->e:J

    sub-long/2addr v5, v7

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/u;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 17
    invoke-static {v1}, Lcom/octopus/ad/internal/o;->a(Lcom/octopus/ad/internal/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 18
    :goto_2
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/u;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/u;->a(I)V

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/u;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/internal/u;->a:I

    return p0
.end method

.method private b(I)V
    .locals 9

    .line 3
    const-string v0, "imp"

    iget-object v1, p0, Lcom/octopus/ad/internal/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IMPFAIL"

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const-string v0, "CLKFAIL"

    goto :goto_0

    .line 4
    :goto_1
    new-instance v1, Lcom/octopus/ad/internal/l;

    iget-object v3, p0, Lcom/octopus/ad/internal/u;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/octopus/ad/internal/u;->d:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/octopus/ad/internal/u;->e:J

    sub-long/2addr v5, v7

    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/u;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 6
    invoke-static {v1}, Lcom/octopus/ad/internal/o;->a(Lcom/octopus/ad/internal/l;)V

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/u;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/u;->b(I)V

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/u;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/u;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/octopus/ad/internal/u;->a:I

    return v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    const-string v1, "url"

    iget-object v2, p0, Lcom/octopus/ad/internal/u;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "http_status_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 6
    :catch_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 4
    new-instance v0, Lcom/octopus/ad/internal/i;

    iget-object v1, p0, Lcom/octopus/ad/internal/u;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/i;-><init>(Ljava/lang/String;)V

    .line 5
    iget-boolean v1, p0, Lcom/octopus/ad/internal/u;->g:Z

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lcom/octopus/ad/internal/u$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/u$1;-><init>(Lcom/octopus/ad/internal/u;)V

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/i;->a(Lcom/octopus/ad/internal/c/d$a;)Lcom/octopus/ad/internal/i;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/u;->h:Lcom/octopus/ad/internal/c/d$a;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 8
    const-string v3, ""

    const/16 v4, 0xc8

    invoke-interface {v1, v4, v2, v3}, Lcom/octopus/ad/internal/c/d$a;->a(IZLjava/lang/String;)V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/c/d;->b()V

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/c/d$a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/internal/u;->h:Lcom/octopus/ad/internal/c/d$a;

    return-void
.end method
