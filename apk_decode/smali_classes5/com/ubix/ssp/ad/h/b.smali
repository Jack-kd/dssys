.class public Lcom/ubix/ssp/ad/h/b;
.super Lcom/ubix/ssp/ad/a;

# interfaces
.implements Lcom/ubix/ssp/ad/g/k/e;


# instance fields
.field private C:Lcom/ubix/ssp/ad/g/e;

.field private D:Lcom/ubix/ssp/ad/b;

.field private E:Landroid/content/Context;

.field private F:Lcom/ubix/ssp/ad/d/a;

.field private G:Lcom/ubix/ssp/ad/e/a0/l;

.field private H:Landroid/app/Dialog;

.field private I:Lcom/ubix/ssp/ad/d/l;

.field private J:Z

.field private K:Z

.field private L:Z

.field M:Z

.field private N:Lcom/ubix/ssp/ad/g/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/h/b;->M:Z

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/b;->E:Landroid/content/Context;

    const/4 p1, 0x6

    iput p1, p0, Lcom/ubix/ssp/ad/a;->i:I

    return-void
.end method

.method private E()Z
    .locals 6

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-wide v4, v0, Lcom/ubix/ssp/ad/d/a;->j:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/h/b;->K:Z

    return v0
.end method

.method private G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/h/b;->J:Z

    return v0
.end method

.method private K()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/b;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v2

    new-instance v3, Lcom/ubix/ssp/ad/h/b$b;

    invoke-direct {v3, p0}, Lcom/ubix/ssp/ad/h/b$b;-><init>(Lcom/ubix/ssp/ad/h/b;)V

    invoke-interface {v2, v1, v3}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x5

    const-string v2, "\u8d44\u6e90\u4e0b\u8f7d\u9519\u8bef"

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ubix/ssp/ad/h/b;->a(ILcom/ubix/ssp/open/AdError;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/h/b;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/h/b;->H:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/d/l;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/h/b;Lcom/ubix/ssp/ad/e/a0/l;)Lcom/ubix/ssp/ad/e/a0/l;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/h/b;->G:Lcom/ubix/ssp/ad/e/a0/l;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/h/b;Lcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/h/b;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/h/b;->H:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    return-object p0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/e/a0/l;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/h/b;->G:Lcom/ubix/ssp/ad/e/a0/l;

    return-object p0
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/g/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    return-object p0
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    return-object p0
.end method

.method private m(Lcom/ubix/ssp/ad/d/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/h/b;->n(Lcom/ubix/ssp/ad/d/a;)V

    return-void
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->l(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/ubix/ssp/open/ParamsReview;
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/d/l;->x0()Z

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->H0()Z

    move-result v2

    invoke-super {p0, v0, v1, v2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Lcom/ubix/ssp/open/ParamsReview;

    move-result-object v0

    return-object v0
.end method

.method public D()J
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-super {p0, v0}, Lcom/ubix/ssp/ad/a;->g(Lcom/ubix/ssp/ad/d/a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public H()Z
    .locals 1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/h/b;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/h/b;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/h/b;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public I()Z
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const/16 v2, 0x177c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x177d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x177e

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public J()V
    .locals 1

    const/4 v0, 0x6

    invoke-super {p0, v0}, Lcom/ubix/ssp/ad/a;->m(I)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;)V

    return-void
.end method

.method public a(IJJ)V
    .locals 9

    .line 5
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    const-wide/16 v7, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;IJJJ)V

    const/16 v1, 0x62

    if-le p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/h/b;->M:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/h/b;->M:Z

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v8, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    move-wide v6, p4

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;JJJ)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v8, v1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 0

    .line 6
    invoke-super {p0, p2}, Lcom/ubix/ssp/ad/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->y()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/h/b;->K:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/ad/d/a;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->c(Lcom/ubix/ssp/ad/d/a;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/e;->onAdExposed()V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->i:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(ILcom/ubix/ssp/ad/d/a;)V
    .locals 1

    .line 8
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(ILcom/ubix/ssp/ad/d/a;)V

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/h/b;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(ILcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 9
    invoke-super {p0, p2}, Lcom/ubix/ssp/ad/a;->c(Lcom/ubix/ssp/open/AdError;)V

    invoke-super {p0, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/open/AdError;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/h/b;->J:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ubix/ssp/ad/g/e;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "runClickCallback "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";canRun="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    :cond_5
    iget-object p2, p0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->m0()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    invoke-interface {p2}, Lcom/ubix/ssp/ad/g/e;->onAdClicked()V

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x4

    if-eq p1, p2, :cond_6

    invoke-virtual {p0, v1}, Lcom/ubix/ssp/ad/h/b;->e(I)V

    :cond_6
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_0

    invoke-super {p0, v0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V
    .locals 0

    .line 12
    invoke-super/range {p0 .. p5}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V

    move-object p1, p0

    iget-object p2, p1, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/h/b;->e(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    .line 13
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ubix/ssp/open/AdError;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/h/b;->b(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/h/b;->m(Lcom/ubix/ssp/ad/d/a;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/a;->g:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p1, v0, p2}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_2

    sget v0, Lcom/ubix/ssp/ad/d/b;->E:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->m()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/b;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/g/e;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    return-void
.end method

.method public b(I)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->E:Landroid/content/Context;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->F:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    return-void
.end method

.method public b(ILandroid/view/View;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object p3

    const-string p1, "__CLICK_TRIGGER__"

    const-string p2, ""

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V

    return-void
.end method

.method public b(ILcom/ubix/ssp/ad/d/a;)V
    .locals 1

    .line 4
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(ILcom/ubix/ssp/ad/d/a;)V

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/h/b;->a(I[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/h/b;->e(I)V

    return-void
.end method

.method public b(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    .line 5
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/open/AdError;)V

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/open/AdError;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/e;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_0

    invoke-super {p0, v0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    if-eqz v0, :cond_0

    sget v2, Lcom/ubix/ssp/ad/d/b;->E:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->B()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v8, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->o()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move v9, v1

    goto :goto_0

    :cond_1
    move v9, v2

    :goto_0
    iget-object v10, p0, Lcom/ubix/ssp/ad/h/b;->N:Lcom/ubix/ssp/ad/g/c;

    const/4 v6, 0x6

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v4 .. v10}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IZLcom/ubix/ssp/ad/g/c;)I

    move-result p1

    const/4 p2, 0x6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    iget-object v0, v4, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v4, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->q()I

    move-result v3

    invoke-virtual {p0, v0, v5, v7, v3}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;I)V

    goto :goto_3

    :cond_3
    const/16 v0, 0x17

    const/4 v3, 0x2

    if-ne p1, v0, :cond_4

    iget-object v0, v4, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, v4, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v6}, Lcom/ubix/ssp/ad/d/l;->q()I

    move-result v6

    invoke-virtual {p0, v0, v5, v7, v6}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;I)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Lcom/ubix/ssp/ad/h/b;->a(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const/16 v0, 0x1f

    if-eq p1, v3, :cond_8

    const/4 v3, 0x5

    if-eq p1, v3, :cond_8

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    iget-object v0, v4, Lcom/ubix/ssp/ad/h/b;->E:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;)V

    goto :goto_3

    :cond_6
    const/16 v0, 0x21

    if-ne p1, v0, :cond_7

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/ubix/ssp/ad/h/b;->a(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/ubix/ssp/ad/h/b;->a(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    :goto_1
    if-ne p1, v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->g(Ljava/lang/String;)V

    :cond_9
    iget-object v0, v4, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v7}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    goto :goto_3

    :cond_a
    :goto_2
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/ubix/ssp/ad/h/b;->a(I[Ljava/lang/Object;)V

    :goto_3
    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Lcom/ubix/ssp/ad/h/b;->a(I[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    const-string v0, "__MULTI_CLICK_KEY__"

    const-string v3, "TRUE"

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v0

    if-nez v0, :cond_c

    if-eq p1, p2, :cond_c

    const/16 p2, 0x20

    if-eq p1, p2, :cond_c

    invoke-virtual {p0, v2}, Lcom/ubix/ssp/ad/h/b;->e(I)V

    goto :goto_5

    :cond_b
    move-object v4, p0

    :cond_c
    :goto_5
    return v1
.end method

.method public c(Landroid/content/Context;)V
    .locals 17

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "AD_HEIGHT"

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/a;->x()V

    const-string v3, "Activity/Context\u4e3a\u7a7a"

    const/4 v4, 0x4

    if-nez v1, :cond_0

    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->b(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz v2, :cond_b

    invoke-interface {v2, v1}, Lcom/ubix/ssp/ad/g/e;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_0
    invoke-direct {v0}, Lcom/ubix/ssp/ad/h/b;->G()Z

    move-result v5

    const/4 v6, 0x5

    const-string v7, "\u5185\u5bb9\u52a0\u8f7d\u5931\u8d25"

    if-nez v5, :cond_1

    invoke-static {v6, v7}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz v2, :cond_b

    invoke-interface {v2, v1}, Lcom/ubix/ssp/ad/g/e;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_1
    invoke-direct {v0}, Lcom/ubix/ssp/ad/h/b;->F()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    const-string v8, "\u5e7f\u544a\u91cd\u590d\u5c55\u793a"

    invoke-static {v5, v8}, Lcom/ubix/ssp/ad/e/a0/a0/a;->c(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v8, v0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz v8, :cond_2

    invoke-interface {v8, v5}, Lcom/ubix/ssp/ad/g/e;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_2
    invoke-direct {v0}, Lcom/ubix/ssp/ad/h/b;->E()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v1, "\u6587\u4ef6\u5df2\u7ecf\u8fc7\u671f"

    invoke-static {v4, v1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz v2, :cond_b

    invoke-interface {v2, v1}, Lcom/ubix/ssp/ad/g/e;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_3
    const/16 v4, 0x9

    :try_start_0
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/h/b;->I()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, "AD_WIDTH"

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    :try_start_1
    iget-object v5, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ubix/ssp/ad/a;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v10, "VIDEO_RENDER_TYPE"

    :try_start_2
    iget-object v11, v0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v11}, Lcom/ubix/ssp/ad/d/l;->k0()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v10

    iget-object v11, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v11, v11, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v11, v11, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v11, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v11, v11, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-interface {v10, v11}, Lcom/ubix/ssp/ad/e/v/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v11, "VIDEO_URL"

    :try_start_3
    iget-object v12, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v12, v12, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v12, v12, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v12, v12, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v12, v12, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v11, "AUTO_MUTE"

    :try_start_4
    iget-object v12, v0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v12}, Lcom/ubix/ssp/ad/d/l;->K0()Z

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    :goto_0
    invoke-virtual {v5, v8, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    goto :goto_1

    :cond_4
    iget-object v5, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object v5, v5, v9

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ubix/ssp/ad/a;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v10

    iget-object v11, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v11, v11, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v11, v11, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v11, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-interface {v10, v11}, Lcom/ubix/ssp/ad/e/v/a;->c(Ljava/lang/String;)Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v10

    iget-object v11, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v11, v11, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v11, v11, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v11, v11, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-interface {v10, v11}, Lcom/ubix/ssp/ad/e/v/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    goto :goto_0

    :goto_1
    invoke-virtual {v5, v2, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v2, "IS_DOWNLOAD"

    :try_start_5
    iget-object v8, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result v8

    invoke-virtual {v5, v2, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const-string v2, "TEMPLATE_ID"

    :try_start_6
    iget-object v8, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v8, v8, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    invoke-virtual {v5, v2, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const-string v2, "AD_INDEX"

    :try_start_7
    iget-object v8, v0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    iget-object v10, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-interface {v8, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v2, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    if-eqz v2, :cond_5

    iget v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->b:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    if-eqz v2, :cond_5

    const-string v8, "RENDER_MODE"

    :try_start_8
    invoke-virtual {v5, v8, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const-string v2, "SCALE_IGNORE_PERCENT"

    :try_start_9
    iget-object v8, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget v8, v8, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->c:I

    int-to-float v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v8, v10

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v8, v10

    invoke-virtual {v5, v2, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    const-string v2, "SCALE_HORIZONTAL_MARGIN"

    :try_start_a
    iget-object v8, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget v8, v8, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->d:I

    invoke-virtual {v5, v2, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    const-string v2, "SCALE_VERTICAL_MARGIN"

    :try_start_b
    iget-object v8, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget v8, v8, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->e:I

    invoke-virtual {v5, v2, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->b()Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    if-eqz v2, :cond_6

    const-string v2, "AD_SOURCE"

    :try_start_c
    iget-object v8, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a$b;->t:Ljava/lang/String;

    invoke-virtual {v5, v2, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :cond_6
    const-string v2, "SUPPORT_FEED_BACK"

    :try_start_d
    iget-object v8, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-boolean v8, v8, Lcom/ubix/ssp/ad/e/y/a/a;->k:Z

    invoke-virtual {v5, v2, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    const-string v2, "SKIP_VIEW_STYLE"

    :try_start_e
    iget-object v8, v0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v8}, Lcom/ubix/ssp/ad/d/l;->D()I

    move-result v8

    invoke-virtual {v5, v2, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    const-string v2, "SKIP_COUNT_TIME"

    :try_start_f
    iget-object v8, v0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v8}, Lcom/ubix/ssp/ad/d/l;->g0()I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    goto :goto_2

    :cond_7
    iget-object v6, v0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v6}, Lcom/ubix/ssp/ad/d/l;->g0()I

    move-result v6

    :goto_2
    invoke-virtual {v5, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    const-string v2, "IS_UNNAMED"

    :try_start_10
    iget-object v6, v0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v6}, Lcom/ubix/ssp/ad/d/l;->G0()Z

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x6

    invoke-static {v1, v5, v2, v9}, Lcom/ubix/ssp/ad/b;->a(Landroid/content/Context;Landroid/os/Bundle;IZ)Lcom/ubix/ssp/ad/b;

    move-result-object v2

    iput-object v2, v0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v2, v0}, Lcom/ubix/ssp/ad/b;->setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v2, v5}, Lcom/ubix/ssp/ad/b;->b(Landroid/os/Bundle;)Z

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    iget-object v5, v0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/d/l;->e0()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/ubix/ssp/ad/b;->setShowCloseBtnDelay(I)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v8, v0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    iget-object v9, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->g:Ljava/lang/String;

    iget-object v10, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->A:Ljava/lang/String;

    iget-object v11, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->z:Ljava/lang/String;

    iget-object v12, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    iget-object v13, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->H:Ljava/lang/String;

    iget-object v14, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->I:Ljava/lang/String;

    iget-wide v5, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->G:J

    move-wide v15, v5

    invoke-virtual/range {v8 .. v16}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    :cond_8
    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    if-nez v2, :cond_9

    invoke-static {v4, v7}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz v2, :cond_b

    invoke-interface {v2, v1}, Lcom/ubix/ssp/ad/g/e;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_9
    :try_start_11
    iget-object v2, v0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    if-eqz v2, :cond_a

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/ubix/ssp/ad/h/b$a;

    invoke-direct {v5, v0, v1}, Lcom/ubix/ssp/ad/h/b$a;-><init>(Lcom/ubix/ssp/ad/h/b;Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_a
    invoke-static {v4, v7}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz v2, :cond_b

    invoke-interface {v2, v1}, Lcom/ubix/ssp/ad/g/e;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    return-void

    :catch_0
    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz v2, :cond_b

    :goto_3
    invoke-interface {v2, v1}, Lcom/ubix/ssp/ad/g/e;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    goto :goto_4

    :catch_1
    invoke-static {v4, v7}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    :goto_4
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V
    .locals 0

    .line 3
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/h/b;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->i()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->H:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->H:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->G:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->G:Lcom/ubix/ssp/ad/e/a0/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/h/b;->L:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/h/b;->L:Z

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/e;->onAdClosed()V

    :cond_3
    return-void
.end method

.method public f(I)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->E:Landroid/content/Context;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->C:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/h/b;->e(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/h/b;->D:Lcom/ubix/ssp/ad/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xa

    const-string v0, "\u7ade\u4ef7\u5e7f\u544a\u4f53\u4e3a\u7a7a\u6216\u89e3\u6790\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u4f20\u5165\u7684\u53c2\u6570\u662f\u5426\u6b63\u786e"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/h/b;->b(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public i(I)V
    .locals 6

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b;->E:Landroid/content/Context;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    return-void
.end method

.method public j(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/AdError;
    .locals 3

    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const/16 v2, 0x1771

    if-eq v1, v2, :cond_6

    const/16 v2, 0x1772

    if-eq v1, v2, :cond_6

    const/16 v2, 0x1773

    if-eq v1, v2, :cond_6

    const/16 v2, 0x1774

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x177d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x177c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x177e

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x10

    const-string v0, "\u5e7f\u544a\u6a21\u677fId\u5f02\u5e38,\u6216\u8d44\u6e90\u4e0e\u6a21\u677f\u4e0d\u5339\u914d"

    :goto_0
    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_4
    const/16 p1, 0xc

    const-string v0, "\u89c6\u9891\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto :goto_0

    :cond_5
    :goto_2
    const/16 p1, 0xd

    const-string v0, "\u5c01\u9762\u56fe\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto :goto_0

    :cond_6
    :goto_3
    iget-object p1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-eqz p1, :cond_8

    array-length v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    return-object p1

    :cond_8
    :goto_4
    const/16 p1, 0xa

    const-string v0, "\u56fe\u7247\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto :goto_0
.end method

.method public n(I)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->w()V

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->u()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/h/b;->J:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/b;->C:Lcom/ubix/ssp/ad/g/e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/e;->onAdLoadSucceed()V

    :cond_0
    return-void
.end method

.method public n(Lcom/ubix/ssp/ad/d/a;)V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->v()V

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/b;->I:Lcom/ubix/ssp/ad/d/l;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/h/b;->K()V

    return-void
.end method
