.class public Lcom/ubix/ssp/ad/e/a0/y/d/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ubix/ssp/ad/e/a0/y/d/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:Lcom/ubix/ssp/ad/e/a0/y/d/a;

.field private k:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->k:Z

    return-void
.end method

.method public static e()Lcom/ubix/ssp/ad/e/a0/y/d/d;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a:Lcom/ubix/ssp/ad/e/a0/y/d/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/y/d/d;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a:Lcom/ubix/ssp/ad/e/a0/y/d/d;

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a:Lcom/ubix/ssp/ad/e/a0/y/d/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->j:Lcom/ubix/ssp/ad/e/a0/y/d/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->k:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->i:J

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->h:J

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->i:J

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/y/d/a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->j:Lcom/ubix/ssp/ad/e/a0/y/d/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->h:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->k:Z

    return-void
.end method

.method public b()Lcom/ubix/ssp/ad/e/a0/y/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->j:Lcom/ubix/ssp/ad/e/a0/y/d/a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->f:Ljava/lang/String;

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->h:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->i:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->k:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
