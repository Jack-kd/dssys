.class public Lcom/ubix/ssp/ad/c/b;
.super Lcom/ubix/ssp/ad/a;

# interfaces
.implements Lcom/ubix/ssp/ad/g/k/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/c/b$e;,
        Lcom/ubix/ssp/ad/c/b$d;
    }
.end annotation


# static fields
.field private static volatile C:I = -0x1

.field private static volatile D:Ljava/lang/String; = ""


# instance fields
.field private E:I

.field private F:Z

.field private G:Z

.field private H:Lcom/ubix/ssp/ad/g/a;

.field private I:Z

.field private J:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field public K:Ljava/util/concurrent/ScheduledExecutorService;

.field private L:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lcom/ubix/ssp/ad/d/a;

.field private N:Lcom/ubix/ssp/open/AdSize;

.field private O:Lcom/ubix/ssp/ad/d/l;

.field private P:Lcom/ubix/ssp/ad/g/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ubix/ssp/open/AdSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/ubix/ssp/open/AdSize;-><init>(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/c/b;->F:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/c/b;->G:Z

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/c/b;->L:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x4

    iput v1, p0, Lcom/ubix/ssp/ad/a;->i:I

    if-nez p3, :cond_0

    new-instance p3, Lcom/ubix/ssp/open/AdSize;

    invoke-direct {p3, v0, v0}, Lcom/ubix/ssp/open/AdSize;-><init>(II)V

    :cond_0
    iput-object p3, p0, Lcom/ubix/ssp/ad/c/b;->N:Lcom/ubix/ssp/open/AdSize;

    sget p3, Lcom/ubix/ssp/ad/c/b;->C:I

    const/4 v1, -0x1

    const-string v2, "ubix_sp_capacity"

    if-ne p3, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "b_cur"

    invoke-static {p3, v2, v1, v0}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    sput p3, Lcom/ubix/ssp/ad/c/b;->C:I

    :cond_1
    sget-object p3, Lcom/ubix/ssp/ad/c/b;->D:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "b_cur_time"

    invoke-static {p3, v2, v0, p2}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ubix/ssp/ad/c/b;->D:Ljava/lang/String;

    :cond_2
    new-instance p2, Ljava/lang/ref/SoftReference;

    new-instance p3, Landroid/widget/RelativeLayout;

    invoke-direct {p3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/c/b;->F()V

    return-void
.end method

.method public static synthetic B()I
    .locals 1

    sget v0, Lcom/ubix/ssp/ad/c/b;->C:I

    return v0
.end method

.method private F()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->K:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/ubix/ssp/ad/c/b$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/c/b$b;-><init>(Lcom/ubix/ssp/ad/c/b;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/c/b;->K:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private G()Z
    .locals 6

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-wide v4, v0, Lcom/ubix/ssp/ad/d/a;->j:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private J()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->H:Lcom/ubix/ssp/ad/g/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/a;->onAdLoadSucceed()V

    :cond_0
    return-void
.end method

.method private K()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->N:Lcom/ubix/ssp/open/AdSize;

    invoke-virtual {v1}, Lcom/ubix/ssp/open/AdSize;->getWidth()I

    move-result v1

    const-string v2, "AD_WIDTH"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->N:Lcom/ubix/ssp/open/AdSize;

    invoke-virtual {v1}, Lcom/ubix/ssp/open/AdSize;->getHeight()I

    move-result v1

    const-string v2, "AD_HEIGHT"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/d/l;->k0()I

    move-result v1

    const-string v2, "VIDEO_RENDER_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/d/l;->G0()Z

    move-result v1

    const-string v2, "IS_UNNAMED"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/d/l;->c()I

    move-result v1

    const-string v2, "AUTO_PLAY"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const-string v2, "TEMPLATE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result v1

    const-string v2, "IS_DOWNLOAD"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->f:Ljava/lang/String;

    :goto_0
    const-string v2, "TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "VIDEO_URL"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->L:Ljava/lang/ref/SoftReference;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->L:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4}, Lcom/ubix/ssp/ad/b;->a(Landroid/content/Context;Landroid/os/Bundle;IZ)Lcom/ubix/ssp/ad/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ubix/ssp/ad/b;->setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V

    invoke-virtual {v1, v3}, Lcom/ubix/ssp/ad/b;->setShowCloseBtnDelay(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/4 v4, -0x2

    invoke-virtual {v2, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, v2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/e/y/a/a;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v3

    new-instance v4, Lcom/ubix/ssp/ad/c/b$c;

    invoke-direct {v4, p0, v0, v1}, Lcom/ubix/ssp/ad/c/b$c;-><init>(Lcom/ubix/ssp/ad/c/b;Landroid/os/Bundle;Lcom/ubix/ssp/ad/b;)V

    invoke-interface {v3, v2, v4}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V

    return-void

    :cond_5
    const/4 v0, 0x5

    const-string v1, "\u5e7f\u544a\u5916\u5c42\u4e3a\u7a7a\u6216\u8005\u5e7f\u544a\u4e0d\u53ef\u89c1"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/ubix/ssp/ad/c/b;->a(ILcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_6
    :goto_2
    const-string v0, "Activity/Context\u4e3a\u7a7a"

    invoke-static {v2, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/ubix/ssp/ad/c/b;->a(ILcom/ubix/ssp/open/AdError;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/c/b;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/c/b;)Lcom/ubix/ssp/ad/d/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/a;->k:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/c/b;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/c/b;->o(I)V

    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/c/b;)Lcom/ubix/ssp/ad/d/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/c/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/c/b;->E:I

    return p0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/c/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/c/b;->I:Z

    return p0
.end method

.method private e(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->H:Lcom/ubix/ssp/ad/g/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/a;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized o(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run into rotateAd, refreshTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->K:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->K:Ljava/util/concurrent/ScheduledExecutorService;

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string p1, "queue only need 1 thread,returned."

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    if-gtz p1, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run into rotateAd, need to stop  is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/c/b;->I:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/ubix/ssp/ad/c/b;->F()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->K:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/c/b$e;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/c/b$e;-><init>(Lcom/ubix/ssp/ad/c/b;I)V

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    invoke-direct {p0}, Lcom/ubix/ssp/ad/c/b;->F()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->K:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/c/b$d;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/c/b$d;-><init>(Lcom/ubix/ssp/ad/c/b;I)V

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :goto_0
    :try_start_5
    const-string p1, "banner lost parent, terminal."

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/c/b;->L()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :goto_1
    :try_start_6
    const-string p1, "may be terminated"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method private p(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    if-lez p1, :cond_1

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    const/16 v0, 0x78

    if-lt p1, v0, :cond_2

    move p1, v0

    :cond_2
    iput p1, p0, Lcom/ubix/ssp/ad/c/b;->E:I

    return-void
.end method


# virtual methods
.method public C()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public D()Lcom/ubix/ssp/open/ParamsReview;
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/d/l;->x0()Z

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->H0()Z

    move-result v2

    invoke-super {p0, v0, v1, v2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Lcom/ubix/ssp/open/ParamsReview;

    move-result-object v0

    return-object v0
.end method

.method public E()J
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    invoke-super {p0, v0}, Lcom/ubix/ssp/ad/a;->g(Lcom/ubix/ssp/ad/d/a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/c/b;->G:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/c/b;->G()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public I()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/c/b;->m(I)V

    return-void
.end method

.method public L()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRequest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/c/b;->I:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/c/b;->I:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->K:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/c/b;->K:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/c/b;->H()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/ad/d/a;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->c(Lcom/ubix/ssp/ad/d/a;)V

    iget p1, p0, Lcom/ubix/ssp/ad/c/b;->E:I

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/c/b;->o(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b;->H:Lcom/ubix/ssp/ad/g/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/a;->onAdExposed()V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->i:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    iget p1, p0, Lcom/ubix/ssp/ad/c/b;->E:I

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/c/b;->o(I)V

    const/4 p1, 0x4

    const-string p2, "\u6587\u4ef6\u5df2\u7ecf\u8fc7\u671f"

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b;->H:Lcom/ubix/ssp/ad/g/a;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/ubix/ssp/ad/g/a;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_2
    return-void
.end method

.method public a(ILcom/ubix/ssp/ad/d/a;)V
    .locals 1

    .line 5
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(ILcom/ubix/ssp/ad/d/a;)V

    :try_start_0
    sget-boolean p1, Lcom/ubix/ssp/ad/d/b;->v:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/ubix/ssp/ad/b;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/b;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(ILcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 6
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/c/b;->G:Z

    invoke-direct {p0, p2}, Lcom/ubix/ssp/ad/c/b;->e(Lcom/ubix/ssp/open/AdError;)V

    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

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

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

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

    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b;->H:Lcom/ubix/ssp/ad/g/a;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/a;->onAdClicked()V

    :cond_6
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_0

    invoke-super {p0, v0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    .line 9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/c/b;->E:I

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/c/b;->o(I)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ubix/ssp/open/AdError;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/c/b;->e(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->N:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->d()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/c/b;->p(I)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    iput p1, p0, Lcom/ubix/ssp/ad/c/b;->E:I

    :goto_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/c/b;->K()V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    .locals 1
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

    .line 11
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/g/a;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/ubix/ssp/ad/c/b;->H:Lcom/ubix/ssp/ad/g/a;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ubix/ssp/ad/c/b;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    sput v3, Lcom/ubix/ssp/ad/c/b;->C:I

    sput-object v0, Lcom/ubix/ssp/ad/c/b;->D:Ljava/lang/String;

    :cond_0
    sget v1, Lcom/ubix/ssp/ad/c/b;->C:I

    add-int/2addr v1, v2

    sget v4, Lcom/ubix/ssp/ad/d/b;->A:I

    if-le v1, v4, :cond_1

    move v3, v2

    :cond_1
    if-nez v3, :cond_2

    sget v1, Lcom/ubix/ssp/ad/c/b;->C:I

    add-int/2addr v1, v2

    sput v1, Lcom/ubix/ssp/ad/c/b;->C:I

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->z()Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/ubix/ssp/ad/e/a0/c;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/ubix/ssp/ad/c/b$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/ubix/ssp/ad/c/b$a;-><init>(Lcom/ubix/ssp/ad/c/b;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v3
.end method

.method public b(I)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->F:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    return-void
.end method

.method public b(ILandroid/view/View;Ljava/util/HashMap;)V
    .locals 0
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

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b;->J:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p0, p1, p3}, Lcom/ubix/ssp/ad/c/b;->b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z

    return-void
.end method

.method public b(ILcom/ubix/ssp/ad/d/a;)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(ILcom/ubix/ssp/ad/d/a;)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/c/b;->a(I[Ljava/lang/Object;)V

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

    .line 5
    iget-object v0, p0, Lcom/ubix/ssp/ad/c/b;->M:Lcom/ubix/ssp/ad/d/a;

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

    .line 6
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->i()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    const-string v0, "__CLICK_AREA__"

    const-string v3, "1"

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v8, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    iget-object v10, p0, Lcom/ubix/ssp/ad/c/b;->P:Lcom/ubix/ssp/ad/g/c;

    const/4 v6, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v4 .. v10}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IZLcom/ubix/ssp/ad/g/c;)I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_8

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0x1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v3, 0x5

    if-eq p1, v3, :cond_6

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x16

    if-ne p1, p2, :cond_2

    iget-object p1, v4, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget-object p2, v4, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->q()I

    move-result p2

    invoke-virtual {p0, p1, v5, v7, p2}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;I)V

    goto/16 :goto_2

    :cond_2
    const/16 p2, 0x17

    if-ne p1, p2, :cond_3

    iget-object p1, v4, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget-object p2, v4, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->q()I

    move-result p2

    invoke-virtual {p0, p1, v5, v7, p2}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;I)V

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/ubix/ssp/ad/c/b;->a(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    iget-object p1, v4, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    const/16 p2, 0x21

    if-ne p1, p2, :cond_5

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/c/b;->a(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Lcom/ubix/ssp/ad/c/b;->a(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    :goto_0
    if-ne p1, p2, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->g(Ljava/lang/String;)V

    :cond_7
    iget-object p1, v4, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-virtual {p0, p1, v5, v7}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_8
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/c/b;->a(I[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p1

    iget p2, v5, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p1, p2}, Lcom/ubix/ssp/ad/e/s/d;->b(I)I

    move-result p1

    const/16 p2, 0x2c

    if-ne p1, p2, :cond_a

    iget-object p1, v4, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-nez p1, :cond_a

    iget-object p1, v4, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, v4, Lcom/ubix/ssp/ad/a;->y:Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p0, v7, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p1

    iput-object p1, v4, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p1

    iget-object p2, v4, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;)V

    goto :goto_2

    :cond_9
    move-object v4, p0

    :cond_a
    :goto_2
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p1}, Lcom/ubix/ssp/ad/c/b;->a(I[Ljava/lang/Object;)V

    return v1
.end method

.method public c(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/c/b;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/c/b;->H:Lcom/ubix/ssp/ad/g/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/a;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 6

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->C:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    return-void
.end method

.method public i(I)V
    .locals 6

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/c/b;->O:Lcom/ubix/ssp/ad/d/l;

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

    const/16 v2, 0xfa3

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    const/16 p1, 0xa

    const-string v0, "\u56fe\u7247\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    :goto_0
    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v2, 0xfa4

    if-ne v1, v2, :cond_6

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    :goto_1
    const/16 p1, 0xc

    const-string v0, "\u89c6\u9891\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto :goto_0

    :cond_5
    :goto_2
    const/16 p1, 0xd

    const-string v0, "\u5c01\u9762\u56fe\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto :goto_0

    :cond_6
    const/16 p1, 0x10

    const-string v0, "\u5e7f\u544a\u6a21\u677fId\u5f02\u5e38,\u6216\u8d44\u6e90\u4e0e\u6a21\u677f\u4e0d\u5339\u914d"

    goto :goto_0
.end method

.method public m(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/c/b;->p(I)V

    const/4 p1, 0x4

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->m(I)V

    return-void
.end method

.method public n(I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/c/b;->G:Z

    invoke-direct {p0}, Lcom/ubix/ssp/ad/c/b;->J()V

    return-void
.end method
