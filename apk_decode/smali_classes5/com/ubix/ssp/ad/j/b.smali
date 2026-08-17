.class public Lcom/ubix/ssp/ad/j/b;
.super Lcom/ubix/ssp/ad/k/b;

# interfaces
.implements Lcom/ubix/ssp/ad/g/k/i;


# static fields
.field public static final Z:Ljava/lang/String; = "b"


# instance fields
.field private a0:Lcom/ubix/ssp/ad/g/i;

.field private b0:Landroid/content/Context;

.field private c0:Lcom/ubix/ssp/ad/b;

.field private d0:I

.field private e0:I

.field private volatile f0:Z

.field private volatile g0:Z

.field private h0:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i0:Lcom/ubix/ssp/ad/e/a0/g;

.field private transient j0:Z

.field private k0:I

.field private l0:J

.field private m0:Z

.field private n0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/k/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p2, 0x1388

    iput p2, p0, Lcom/ubix/ssp/ad/j/b;->d0:I

    iput p2, p0, Lcom/ubix/ssp/ad/j/b;->e0:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/j/b;->f0:Z

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/j/b;->g0:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/j/b;->h0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/j/b;->j0:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/ubix/ssp/ad/j/b;->k0:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/j/b;->l0:J

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/j/b;->m0:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/j/b;->n0:Ljava/util/HashMap;

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/j/b;->o0:Z

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    const/4 p1, 0x1

    iput p1, p0, Lcom/ubix/ssp/ad/a;->i:I

    return-void
.end method

.method private T()Z
    .locals 8

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const-string v4, "TEMPLATE_ID"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->f0()I

    move-result v3

    const-string v4, "SKIP_VIEW_STYLE"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->g0()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/ubix/ssp/ad/j/b;->e0:I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->g0()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    :goto_0
    const-string v4, "SKIP_COUNT_TIME"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result v3

    const-string v4, "IS_DOWNLOAD"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->k0()I

    move-result v3

    const-string v4, "VIDEO_RENDER_TYPE"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-boolean v3, v3, Lcom/ubix/ssp/ad/e/y/a/a;->k:Z

    const-string v4, "SUPPORT_FEED_BACK"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->c0()I

    move-result v3

    const-string v4, "S_A_T"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->d0()J

    move-result-wide v3

    const-string v5, "S_A_T_I"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->K()J

    move-result-wide v3

    const-string v5, "G_B_U"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get lsat by renderAd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lsat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ubix_sp_gold"

    invoke-static {v4, v7, v5}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "L_S_A_T_I"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->G0()Z

    move-result v3

    const-string v4, "IS_UNNAMED"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, Lcom/ubix/ssp/ad/b;->a(Landroid/content/Context;Landroid/os/Bundle;IZ)Lcom/ubix/ssp/ad/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-nez v0, :cond_3

    const/4 v0, 0x6

    const-string v1, "\u521b\u5efaViewClass\u5931\u8d25\uff0c\u8bf7\u52ff\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ubix/ssp/ad/j/b;->a(ILcom/ubix/ssp/open/AdError;)V

    return v2

    :cond_3
    invoke-virtual {v0, p0}, Lcom/ubix/ssp/ad/b;->setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V

    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/j/b;Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IZLcom/ubix/ssp/ad/g/c;)I
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IZLcom/ubix/ssp/ad/g/c;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/j/b;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/k;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/ubix/ssp/ad/j/b;->e(Ljava/lang/String;Z)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/j/b;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(JLjava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->i0:Lcom/ubix/ssp/ad/e/a0/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/g;

    invoke-direct {v0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/g;-><init>(J)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/j/b;->i0:Lcom/ubix/ssp/ad/e/a0/g;

    new-instance p1, Lcom/ubix/ssp/ad/j/b$g;

    invoke-direct {p1, p0, p3}, Lcom/ubix/ssp/ad/j/b$g;-><init>(Lcom/ubix/ssp/ad/j/b;Ljava/util/HashMap;)V

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g$b;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/j/b;->i0:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/a0/g;->e()V

    new-instance p2, Lcom/ubix/ssp/ad/e/a0/b0/a;

    iget-object p3, p0, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Application;

    invoke-direct {p2, p3}, Lcom/ubix/ssp/ad/e/a0/b0/a;-><init>(Landroid/app/Application;)V

    new-instance p3, Lcom/ubix/ssp/ad/j/b$h;

    invoke-direct {p3, p0, p1}, Lcom/ubix/ssp/ad/j/b$h;-><init>(Lcom/ubix/ssp/ad/j/b;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p2, p3}, Lcom/ubix/ssp/ad/e/a0/b0/a;->a(Lcom/ubix/ssp/ad/e/a0/b0/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/ubix/ssp/ad/d/a;Z)Z
    .locals 4

    .line 20
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v2, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/j/b;->b(Lcom/ubix/ssp/ad/e/y/a/a;Z)Z

    return v3

    :pswitch_2
    iget-object p1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/ubix/ssp/ad/e/y/a/a;Z)Z
    .locals 4

    .line 22
    iget-object v0, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v0

    iget-object v2, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V

    :cond_1
    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1}, Lcom/ubix/ssp/ad/j/b;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private a(Ljava/util/HashMap;Landroid/graphics/Rect;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 23
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "14"

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    new-array v4, v4, [F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ";SystemClock.uptimeMillis()="

    const-string v7, ";ry="

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v9, v1, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz v9, :cond_1

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, v1, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v10, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, v9, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget v13, v2, Landroid/graphics/Rect;->left:I

    mul-int/2addr v13, v10

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, v9, Landroid/graphics/Rect;->left:I

    iget v13, v9, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    iget v15, v2, Landroid/graphics/Rect;->top:I

    mul-int/2addr v15, v11

    int-to-float v15, v15

    div-float/2addr v15, v14

    add-float/2addr v13, v15

    float-to-int v13, v13

    iput v13, v9, Landroid/graphics/Rect;->top:I

    iget v13, v9, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    iget v15, v2, Landroid/graphics/Rect;->right:I

    mul-int/2addr v10, v15

    int-to-float v10, v10

    div-float/2addr v10, v14

    sub-float/2addr v13, v10

    float-to-int v10, v13

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v11, v2

    int-to-float v2, v11

    div-float/2addr v2, v14

    sub-float/2addr v10, v2

    float-to-int v2, v10

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-double v10, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v12, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v2, v10

    iget v10, v9, Landroid/graphics/Rect;->top:I

    int-to-double v10, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-double v12, v12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v2, v4, v5

    aput v10, v4, v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "visibleRect use rect ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz v2, :cond_1

    const v9, 0xde3dd

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3e19999a    # 0.15f

    mul-float/2addr v10, v11

    add-float/2addr v2, v10

    float-to-double v12, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v2, v10

    float-to-double v14, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v2, v12

    iget v12, v9, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-double v11, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v10

    float-to-double v13, v13

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    double-to-float v10, v11

    aput v2, v4, v5

    aput v10, v4, v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "visibleRect="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ";rx="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :goto_1
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v8

    goto :goto_2

    :cond_1
    move v2, v5

    :goto_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    new-array v9, v8, [J

    aput-wide v6, v9, v5

    if-eqz v2, :cond_2

    iget-object v6, v1, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "__CLICK_AREA__"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "__CLICK_TRIGGER__"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "__CLICK_UNREAL_TRIGGER__"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    mul-double/2addr v6, v10

    double-to-int v0, v6

    add-int/lit8 v0, v0, 0xa

    aget-wide v10, v9, v5

    aget v15, v4, v5

    aget v16, v4, v8

    const/16 v17, 0x0

    const/4 v14, 0x0

    move-wide v12, v10

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v5, v1, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    iget-object v3, v1, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    new-instance v5, Lcom/ubix/ssp/ad/j/b$f;

    invoke-direct {v5, v1, v9, v0, v4}, Lcom/ubix/ssp/ad/j/b$f;-><init>(Lcom/ubix/ssp/ad/j/b;[JI[F)V

    int-to-long v6, v0

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    :catchall_1
    move-exception v0

    move v5, v2

    goto :goto_3

    :cond_2
    return v2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v5
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/j/b;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/ubix/ssp/ad/e/y/a/a;Z)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/j/b;->a(Lcom/ubix/ssp/ad/e/y/a/a;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    return-object p0
.end method

.method private c(Lcom/ubix/ssp/ad/e/y/a/a;)V
    .locals 0

    .line 3
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Z)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/j/b$a;

    invoke-direct {v1, p0, p2}, Lcom/ubix/ssp/ad/j/b$a;-><init>(Lcom/ubix/ssp/ad/j/b;Z)V

    const/4 p2, 0x5

    invoke-interface {v0, p1, p2, v1}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;ILcom/ubix/ssp/ad/e/v/e$b;)V

    return-void
.end method

.method private c(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/j/b$d;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/j/b$d;-><init>(Lcom/ubix/ssp/ad/j/b;Ljava/util/HashMap;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    return-object p0
.end method

.method private d(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/j/b;->q(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/j/b;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method private d(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3
    const-string v0, "__CLICK_UNREAL_TRIGGER__"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "14"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "__CLICK_AREA__"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/d/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    return-object p0
.end method

.method private e(Ljava/lang/String;Z)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->c()Lcom/ubix/ssp/ad/e/v/f;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/j/b$b;

    invoke-direct {v1, p0, p2}, Lcom/ubix/ssp/ad/j/b$b;-><init>(Lcom/ubix/ssp/ad/j/b;Z)V

    invoke-interface {v0, p1, v1}, Lcom/ubix/ssp/ad/e/v/f;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V

    return-void
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/j/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->r()V

    return-void
.end method

.method public static synthetic g(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/e/a0/g;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/j/b;->i0:Lcom/ubix/ssp/ad/e/a0/g;

    return-object p0
.end method

.method public static synthetic h(Lcom/ubix/ssp/ad/j/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/a;->B:J

    return-wide v0
.end method

.method public static synthetic i(Lcom/ubix/ssp/ad/j/b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/j/b;->h0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic j(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    return-object p0
.end method

.method public static synthetic k(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/b;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    return-object p0
.end method

.method public static synthetic l(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/d/l;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    return-object p0
.end method

.method public static synthetic m(Lcom/ubix/ssp/ad/j/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method private m(Lcom/ubix/ssp/ad/d/a;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->J:Z

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/j/b;->p(Lcom/ubix/ssp/ad/d/a;)V

    return-void
.end method

.method public static synthetic n(Lcom/ubix/ssp/ad/j/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method private p(Lcom/ubix/ssp/ad/d/a;)V
    .locals 1

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->v()V

    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/j/b;->c(Lcom/ubix/ssp/ad/e/y/a/a;)V

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/j/b;->c(Lcom/ubix/ssp/ad/e/y/a/a;Z)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/j/b;->f0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/i;->onAdResponseSucceed()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/b;->T()Z

    :cond_0
    return-void
.end method

.method private t(I)Z
    .locals 5

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/j/b;->o0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/ubix/ssp/ad/j/b;->Z:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAdWithType type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3ea

    const-string v3, "IS_VIDEO"

    const/4 v4, 0x0

    if-eq p1, v2, :cond_3

    const/16 v2, 0x3ed

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x3e9

    if-eq p1, v2, :cond_2

    const/16 v2, 0x3ec

    if-ne p1, v2, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object p1, p1, v4

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    const-string v2, "VIDEO_URL"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "AUTO_MUTE"

    invoke-virtual {v0, p1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->k0()I

    move-result p1

    const-string v2, "VIDEO_RENDER_TYPE"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->t:Ljava/lang/String;

    const-string v2, "AD_SOURCE"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    if-eqz p1, :cond_6

    iget p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->b:I

    if-eqz p1, :cond_6

    const-string v2, "RENDER_MODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->c:I

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    const-string v2, "SCALE_IGNORE_PERCENT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->d:I

    const-string v2, "SCALE_HORIZONTAL_MARGIN"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->e:I

    const-string v2, "SCALE_VERTICAL_MARGIN"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->G0()Z

    move-result p1

    const-string v2, "IS_UNNAMED"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->f0()I

    move-result p1

    const-string v2, "SKIP_VIEW_STYLE"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->g0()I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    iget p1, p0, Lcom/ubix/ssp/ad/j/b;->e0:I

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->g0()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    :goto_2
    const-string v2, "SKIP_COUNT_TIME"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/b;->b(Landroid/os/Bundle;)Z

    :cond_8
    iput-boolean v1, p0, Lcom/ubix/ssp/ad/j/b;->o0:Z

    return v1
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->l(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/ubix/ssp/open/ParamsReview;
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/d/l;->x0()Z

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->H0()Z

    move-result v2

    invoke-super {p0, v0, v1, v2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Lcom/ubix/ssp/open/ParamsReview;

    move-result-object v0

    return-object v0
.end method

.method public D()J
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-super {p0, v0}, Lcom/ubix/ssp/ad/a;->g(Lcom/ubix/ssp/ad/d/a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/ubix/ssp/ad/k/b;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/ubix/ssp/ad/a;->m(I)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;)V

    return-void
.end method

.method public a(IJJ)V
    .locals 0

    .line 5
    invoke-super/range {p0 .. p5}, Lcom/ubix/ssp/ad/k/b;->a(IJJ)V

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
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->y()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/ad/d/a;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->c(Lcom/ubix/ssp/ad/d/a;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/i;->onAdExposed()V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

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

.method public a(ILandroid/view/View;Ljava/util/HashMap;)V
    .locals 7
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

    .line 8
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/a;->q:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "__CLICK_TRIGGER__"

    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object p3

    const-string p2, ""

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAdClicked ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->m0()Z

    move-result p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->q0()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p3}, Lcom/ubix/ssp/ad/j/b;->d(Ljava/util/HashMap;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-boolean p2, p2, Lcom/ubix/ssp/ad/d/a;->w:Z

    if-nez p2, :cond_2

    iget-wide v3, p0, Lcom/ubix/ssp/ad/a;->B:J

    sub-long v3, v0, v3

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->m()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-lez p2, :cond_2

    const-string p2, "__MULTI_CLICK_KEY__"

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u662f\u5426\u6ee1\u8db3\u6761\u4ef6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    iput-wide v0, p0, Lcom/ubix/ssp/ad/a;->B:J

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/j/b;->j0:Z

    const-string p1, "__CLICK_AREA__"

    const-string p2, "22"

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "__CLICK_UNREAL_TRIGGER__"

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/j/b;->m0:Z

    if-nez p1, :cond_3

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/j/b;->m0:Z

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->q()V

    :cond_3
    iput-object p3, p0, Lcom/ubix/ssp/ad/j/b;->n0:Ljava/util/HashMap;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->y()Ljava/util/concurrent/Executor;

    sget-object p1, Lcom/ubix/ssp/ad/e/a0/c;->d:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/ubix/ssp/ad/j/b$c;

    invoke-direct {p2, p0}, Lcom/ubix/ssp/ad/j/b$c;-><init>(Lcom/ubix/ssp/ad/j/b;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_4
    const-string p2, "3"

    :try_start_1
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_5

    const-string p2, "6"

    :try_start_2
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/ubix/ssp/ad/j/b;->l0:J

    sub-long/2addr p1, v0

    iget v0, p0, Lcom/ubix/ssp/ad/j/b;->k0:I

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ubix/ssp/ad/j/b;->l0:J

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->b0()I

    move-result p1

    if-ne p1, v2, :cond_6

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/ubix/ssp/ad/j/b;->a(Ljava/util/HashMap;Landroid/graphics/Rect;)Z

    return-void

    :cond_6
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->b0()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->a0()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->a0()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/ubix/ssp/ad/j/b;->a(Ljava/util/HashMap;Landroid/graphics/Rect;)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_7

    invoke-direct {p0, p3}, Lcom/ubix/ssp/ad/j/b;->c(Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p2, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(ILcom/ubix/ssp/ad/d/a;)V
    .locals 1

    .line 9
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/k/b;->a(ILcom/ubix/ssp/ad/d/a;)V

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->y0()Z

    move-result p2

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->k()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;ZI)V

    sget-boolean p1, Lcom/ubix/ssp/ad/d/b;->v:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(ILcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 10
    invoke-super {p0, p2}, Lcom/ubix/ssp/ad/a;->c(Lcom/ubix/ssp/open/AdError;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/j/b;->f0:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/j/b;->g0:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/j/b;->g0:Z

    invoke-super {p0, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/open/AdError;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    invoke-interface {p1, p2}, Lcom/ubix/ssp/ad/g/i;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/k/b;->a(I[Ljava/lang/Object;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "runClickCallback "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";canRun="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->m0()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/ubix/ssp/ad/g/i;->onAdClicked(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_0

    invoke-super {p0, v0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 7

    .line 13
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->m()V

    return-void

    :cond_0
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ubix/ssp/open/AdError;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/j/b;->b(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_1
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p0, p1, v2}, Lcom/ubix/ssp/ad/j/b;->b(Lcom/ubix/ssp/ad/d/a;Z)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    const-string v1, ";msg:"

    const-string v4, "\u52a0\u8f7d\u672c\u5730\u6587\u4ef6\u5931\u8d25"

    const-string v5, "ad is loadSuccess:"

    if-eqz p1, :cond_3

    iget-boolean v6, p1, Lcom/ubix/ssp/ad/d/a;->b:Z

    if-eqz v6, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/ubix/ssp/ad/j/b;->a(Lcom/ubix/ssp/ad/d/a;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/j/b;->m(Lcom/ubix/ssp/ad/d/a;)V

    sget-object p1, Lcom/ubix/ssp/ad/j/b;->Z:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v2, v4}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/j/b;->b(Lcom/ubix/ssp/open/AdError;)V

    sget-object v0, Lcom/ubix/ssp/ad/j/b;->Z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad is loadFail code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/ubix/ssp/ad/j/b;->b(Lcom/ubix/ssp/ad/d/a;Z)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/j/b;->m(Lcom/ubix/ssp/ad/d/a;)V

    sget-object p1, Lcom/ubix/ssp/ad/j/b;->Z:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {v3, v4}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ubix/ssp/ad/j/b;->a(ILcom/ubix/ssp/open/AdError;)V

    sget-object v0, Lcom/ubix/ssp/ad/j/b;->Z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad is renderFail code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p1, "\u8bf7\u6c42\u8d85\u65f6"

    invoke-static {v3, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/j/b;->h(Lcom/ubix/ssp/open/AdError;)V

    sget-object p1, Lcom/ubix/ssp/ad/j/b;->Z:Ljava/lang/String;

    const-string v0, "ad is timeout"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    iget v1, p0, Lcom/ubix/ssp/ad/j/b;->d0:I

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object p1, Lcom/ubix/ssp/ad/j/b;->Z:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad is start requestTimeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/j/b;->d0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 17

    .line 14
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/k/b;->x()V

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, "\u5e7f\u544a\u5916\u5c42\u4e3a\u7a7a\u6216\u8005\u5e7f\u544a\u4e0d\u53ef\u89c1"

    invoke-static {v2, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->b(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/ubix/ssp/ad/g/i;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    iput-object v3, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    return-void

    :cond_1
    iget-boolean v4, v1, Lcom/ubix/ssp/ad/j/b;->f0:Z

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const-string v2, "\u52a0\u8f7d\u672c\u5730\u6587\u4ef6\u5931\u8d25"

    invoke-static {v0, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz v2, :cond_4

    invoke-interface {v2, v0}, Lcom/ubix/ssp/ad/g/i;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/k/b;->J()Z

    move-result v4

    const-string v5, "\u5e7f\u544a\u91cd\u590d\u5c55\u793a"

    const/4 v6, 0x3

    if-eqz v4, :cond_3

    invoke-static {v6, v5}, Lcom/ubix/ssp/ad/e/a0/a0/a;->c(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz v2, :cond_4

    invoke-interface {v2, v0}, Lcom/ubix/ssp/ad/g/i;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/k/b;->K()Z

    move-result v4

    const-string v7, "\u5185\u5bb9\u52a0\u8f7d\u5931\u8d25"

    if-nez v4, :cond_5

    invoke-static {v2, v7}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz v2, :cond_4

    invoke-interface {v2, v0}, Lcom/ubix/ssp/ad/g/i;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/k/b;->I()Z

    move-result v2

    const/4 v4, 0x4

    if-eqz v2, :cond_7

    const-string v0, "\u6587\u4ef6\u5df2\u7ecf\u8fc7\u671f"

    invoke-static {v4, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz v2, :cond_6

    invoke-interface {v2, v0}, Lcom/ubix/ssp/ad/g/i;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_6
    iput-object v3, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    return-void

    :cond_7
    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-nez v2, :cond_8

    invoke-direct {v1}, Lcom/ubix/ssp/ad/j/b;->T()Z

    :cond_8
    iget-object v2, v1, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v2, :cond_e

    iget v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    invoke-direct {v1, v2}, Lcom/ubix/ssp/ad/j/b;->t(I)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_3

    :cond_9
    iget-object v2, v1, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    :try_start_0
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v8, v1, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    iget-object v9, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->g:Ljava/lang/String;

    iget-object v10, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->A:Ljava/lang/String;

    iget-object v11, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->z:Ljava/lang/String;

    iget-object v12, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    iget-object v13, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->H:Ljava/lang/String;

    iget-object v14, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->I:Ljava/lang/String;

    iget-wide v3, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->G:J

    move-wide v15, v3

    invoke-virtual/range {v8 .. v16}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_a
    :goto_0
    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    iget-boolean v2, v1, Lcom/ubix/ssp/ad/j/b;->g0:Z

    if-nez v2, :cond_b

    iput-boolean v3, v1, Lcom/ubix/ssp/ad/j/b;->g0:Z

    iget-object v2, v1, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {v1}, Lcom/ubix/ssp/ad/a;->u()V

    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    invoke-interface {v2}, Lcom/ubix/ssp/ad/g/i;->onAdLoadSucceed()V

    :cond_b
    :try_start_1
    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    invoke-static {v6, v5}, Lcom/ubix/ssp/ad/e/a0/a0/a;->c(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz v2, :cond_c

    invoke-interface {v2, v0}, Lcom/ubix/ssp/ad/g/i;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_c
    :goto_1
    iput-boolean v3, v1, Lcom/ubix/ssp/ad/k/b;->K:Z

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v0, 0xa

    const-string v2, "\u5408\u89c4\u516d\u8981\u7d20\u521b\u5efa\u5931\u8d25"

    invoke-static {v0, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz v2, :cond_d

    invoke-interface {v2, v0}, Lcom/ubix/ssp/ad/g/i;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_d
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    return-void

    :cond_e
    :goto_3
    const/16 v0, 0x9

    invoke-static {v0, v7}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz v2, :cond_f

    invoke-interface {v2, v0}, Lcom/ubix/ssp/ad/g/i;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_f
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    .locals 0
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

    .line 15
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/a;->g:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/g/i;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    return-void
.end method

.method public a(IJ)Z
    .locals 8

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAdSkipped ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->i()V

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-wide v2, p0, Lcom/ubix/ssp/ad/k/b;->H:J

    iget-wide v4, p0, Lcom/ubix/ssp/ad/k/b;->G:J

    const-wide/16 v6, 0x1388

    move-object v0, p0

    invoke-super/range {v0 .. v7}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;JJJ)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;)V

    iget-object p1, v0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/i;->onAdSkipped()V

    :cond_1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->p()V

    iget-boolean p1, v0, Lcom/ubix/ssp/ad/j/b;->j0:Z

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->n()J

    move-result-wide p1

    iget-object p3, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/d/l;->l()J

    move-result-wide v1

    add-long/2addr p1, v1

    iget-object p3, v0, Lcom/ubix/ssp/ad/j/b;->n0:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/j/b;->a(JLjava/util/HashMap;)Z

    :cond_2
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;ZLjava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v1

    iget v2, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {v1, v2}, Lcom/ubix/ssp/ad/e/s/d;->b(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/d/a;)Z

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    if-nez p2, :cond_2

    const/16 p2, 0x2c

    if-ne v1, p2, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p2

    iget-object p3, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget p1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p2, p3, p1}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/e;

    const-string p2, "\u4e0b\u8f7d\u7ee7\u7eed"

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/z/e;->setText(Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    const/16 p2, 0x2d

    if-ne v1, p2, :cond_4

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget v2, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p2, v1, v2}, Lcom/ubix/ssp/ad/e/s/d;->b(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->y:Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p0, p3, p1, p2}, Lcom/ubix/ssp/ad/k/b;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    :cond_3
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;)V

    return v0

    :cond_4
    const/16 p2, 0x2b

    if-eq v1, p2, :cond_5

    const/16 p2, 0x2e

    if-ne v1, p2, :cond_7

    :cond_5
    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->y:Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p0, p3, p2, v1}, Lcom/ubix/ssp/ad/k/b;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p2

    iput-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    :cond_6
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p2, v1}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;)V

    :cond_7
    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-nez p2, :cond_8

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->y:Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p0, p3, p1, v1}, Lcom/ubix/ssp/ad/k/b;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    const/4 p1, 0x1

    return p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public b(Lcom/ubix/ssp/ad/d/a;Z)Lcom/ubix/ssp/ad/d/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/j/b;->a(Lcom/ubix/ssp/ad/d/a;Z)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public b(I)V
    .locals 8

    .line 3
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->y()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "TYPE"

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TITLE"

    const-string v1, "\u5e94\u7528\u4ecb\u7ecd"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->F:Ljava/lang/String;

    const-string v1, "TARGET_URL"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->F:Ljava/lang/String;

    iget-object v5, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    iget-object v6, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_1
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

    .line 4
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/a;->q:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "__CLICK_TRIGGER__"

    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object p3

    const-string p2, ""

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "15"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->y()Ljava/util/concurrent/Executor;

    sget-object p1, Lcom/ubix/ssp/ad/e/a0/c;->d:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/ubix/ssp/ad/j/b$e;

    invoke-direct {p2, p0}, Lcom/ubix/ssp/ad/j/b$e;-><init>(Lcom/ubix/ssp/ad/j/b;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p2, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V

    return-void
.end method

.method public b(ILcom/ubix/ssp/ad/d/a;)V
    .locals 1

    .line 5
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/k/b;->b(ILcom/ubix/ssp/ad/d/a;)V

    const/4 p2, 0x3

    const/4 v0, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->o()V

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/ubix/ssp/ad/j/b;->a(I[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->o()V

    :cond_2
    return-void
.end method

.method public b(Lcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 6
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/open/AdError;)V

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/open/AdError;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/i;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

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

    .line 7
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_0

    invoke-super {p0, v0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z
    .locals 13
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

    .line 8
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->i()Z

    move-result v0

    const-string v1, "__CLICK_UNREAL_TRIGGER__"

    const-string v2, "__CLICK_AREA__"

    const/4 v3, 0x1

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->k()V

    sget v0, Lcom/ubix/ssp/ad/d/b;->E:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    iget-object v4, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/d/l;->B()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/d/l;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v10, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->o()I

    move-result v0

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    move v11, v3

    goto :goto_0

    :cond_1
    move v11, v4

    :goto_0
    const/4 v12, 0x0

    const/4 v8, 0x1

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    invoke-virtual/range {v6 .. v12}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IZLcom/ubix/ssp/ad/g/c;)I

    move-result p1

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x4

    if-eq p1, p2, :cond_b

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 p2, 0x1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/16 p2, 0x16

    if-ne p1, p2, :cond_4

    iget-object p2, v6, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    iget-object v0, v6, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->M()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/ubix/ssp/ad/b;->c(II)V

    iget-object p1, v6, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v6, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->q()I

    move-result p2

    invoke-virtual {p0, p1, v7, v9, p2}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;I)V

    goto/16 :goto_3

    :cond_4
    const/16 p2, 0x17

    if-ne p1, p2, :cond_5

    iget-object p1, v6, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v6, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->q()I

    move-result p2

    invoke-virtual {p0, p1, v7, v9, p2}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;I)V

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/ubix/ssp/ad/j/b;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    iget-object p1, v6, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_6
    const/4 p2, 0x5

    if-ne p1, p2, :cond_7

    iget-object p1, v6, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v7, v9}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    goto :goto_3

    :cond_7
    const/16 p2, 0x21

    if-ne p1, p2, :cond_8

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/j/b;->a(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v3, p1}, Lcom/ubix/ssp/ad/j/b;->a(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    :goto_1
    if-ne p1, p2, :cond_a

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/a;->g(Ljava/lang/String;)V

    :cond_a
    iget-object p2, v6, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    iget-object v0, v6, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->M()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/ubix/ssp/ad/b;->c(II)V

    iget-object p1, v6, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v7, v9}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    iget-object p1, v6, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v6, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->y0()Z

    move-result p2

    iget-object v0, v6, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->k()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;ZI)V

    sget-boolean p1, Lcom/ubix/ssp/ad/d/b;->v:Z

    if-eqz p1, :cond_d

    iget-object p1, v7, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->J:Ljava/lang/String;

    iget-object p2, v6, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_b
    :goto_2
    iget-object p1, v6, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->o()V

    :cond_c
    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/j/b;->a(I[Ljava/lang/Object;)V

    :cond_d
    :goto_3
    iput-boolean v4, v6, Lcom/ubix/ssp/ad/j/b;->j0:Z

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v4, p1}, Lcom/ubix/ssp/ad/j/b;->a(I[Ljava/lang/Object;)V

    const-string p1, "__MULTI_CLICK_KEY__"

    const-string p2, "TRUE"

    invoke-virtual {v9, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_e
    move-object v6, p0

    move-object v9, p2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "__CLICK_TRIGGER__"

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return v3
.end method

.method public c(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p5}, Lcom/ubix/ssp/ad/k/b;->c(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V

    move-object p1, p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p2}, Lcom/ubix/ssp/ad/j/b;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/ubix/ssp/ad/e/y/a/a;Z)Z
    .locals 4

    .line 6
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v2, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3ed

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3ec

    if-ne v2, v3, :cond_3

    :cond_1
    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/ubix/ssp/ad/j/b;->c(Ljava/lang/String;Z)V

    sget-object p2, Lcom/ubix/ssp/ad/j/b;->Z:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "material preloadImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/ubix/ssp/ad/j/b;->d(Ljava/lang/String;Z)V

    sget-object p2, Lcom/ubix/ssp/ad/j/b;->Z:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "material preloadVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_2
    invoke-static {p2, p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------preLoadImg Exception "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;)V

    const/4 p1, 0x5

    const-string p2, "\u56fe\u7247\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ubix/ssp/ad/j/b;->a(ILcom/ubix/ssp/open/AdError;)V

    sget-object p2, Lcom/ubix/ssp/ad/j/b;->Z:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad is material fail code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public e(I)V
    .locals 8

    .line 2
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->i()V

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-wide v4, p0, Lcom/ubix/ssp/ad/k/b;->G:J

    const-wide/16 v2, 0x1388

    const-wide/16 v6, 0x1388

    move-object v0, p0

    invoke-super/range {v0 .. v7}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;JJJ)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;)V

    iget-object p1, v0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/i;->onAdClosed()V

    :cond_1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->n()V

    iget-boolean p1, v0, Lcom/ubix/ssp/ad/j/b;->j0:Z

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->n()J

    move-result-wide v1

    iget-object p1, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->l()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-object p1, v0, Lcom/ubix/ssp/ad/j/b;->n0:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2, p1}, Lcom/ubix/ssp/ad/j/b;->a(JLjava/util/HashMap;)Z

    :cond_2
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    return-void
.end method

.method public f(I)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->y()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "TYPE"

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TITLE"

    const-string v1, "\u6743\u9650"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->C:Ljava/lang/String;

    const-string v1, "TARGET_URL"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->C:Ljava/lang/String;

    iget-object v5, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    iget-object v6, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_1
    return-void
.end method

.method public h()V
    .locals 3

    .line 2
    invoke-super {p0}, Lcom/ubix/ssp/ad/k/b;->h()V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/z/h;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/z/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/z/h;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/z/h;->a()V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/ubix/ssp/ad/d/b;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->i()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->j()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/j/b;->c0:Lcom/ubix/ssp/ad/b;

    :cond_2
    iput-object v1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public h(Lcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/open/AdError;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/i;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xa

    const-string v0, "\u7ade\u4ef7\u5e7f\u544a\u4f53\u4e3a\u7a7a\u6216\u89e3\u6790\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u4f20\u5165\u7684\u53c2\u6570\u662f\u5426\u6b63\u786e"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/j/b;->b(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public i(I)V
    .locals 8

    .line 2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->y()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "TYPE"

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TITLE"

    const-string v1, "\u9690\u79c1"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->B:Ljava/lang/String;

    const-string v1, "TARGET_URL"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/j/b;->b0:Landroid/content/Context;

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->B:Ljava/lang/String;

    iget-object v5, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    iget-object v6, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_1
    return-void
.end method

.method public j(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/AdError;
    .locals 3

    .line 2
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3ed

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

.method public q(I)V
    .locals 1

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->w()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/j/b;->t(I)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/j/b;->g0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/j/b;->g0:Z

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->u()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b;->a0:Lcom/ubix/ssp/ad/g/i;

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/i;->onAdLoadSucceed()V

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Timer has been started,set it ahead of loadAd()"

    :goto_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xbb8

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7530

    if-le p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/ubix/ssp/ad/j/b;->d0:I

    return-void

    :cond_2
    :goto_1
    const-string p1, "Timeout must between 3*1000 and 30*1000 milliseconds"

    goto :goto_0
.end method

.method public s(I)V
    .locals 1

    const/16 v0, 0xbb8

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/ubix/ssp/ad/j/b;->e0:I

    return-void

    :cond_0
    const/16 v0, 0x7530

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/ubix/ssp/ad/j/b;->e0:I

    return-void

    :cond_1
    iput p1, p0, Lcom/ubix/ssp/ad/j/b;->e0:I

    return-void
.end method
