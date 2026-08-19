.class public Lcom/sigmob/sdk/videoplayer/a;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/sigmob/sdk/videoplayer/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/videoplayer/a$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "a"

.field private static final v:I = 0x1770


# instance fields
.field a:Lcom/sigmob/sdk/videoplayer/i;

.field b:Ljava/lang/Class;

.field c:Lcom/sigmob/sdk/videoplayer/l;

.field public d:Lcom/sigmob/sdk/videoplayer/g;

.field public e:Lcom/sigmob/sdk/videoplayer/d;

.field private g:Landroid/view/ViewGroup;

.field private h:I

.field private i:Ljava/util/Timer;

.field private j:Lcom/sigmob/sdk/videoplayer/a$a;

.field private k:Z

.field private l:Z

.field private final m:Landroid/os/Handler;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:F

.field private s:Lcom/sigmob/sdk/videoplayer/k;

.field private t:I

.field private u:Ljava/lang/String;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/sigmob/sdk/videoplayer/d;->a:Lcom/sigmob/sdk/videoplayer/d;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->e:Lcom/sigmob/sdk/videoplayer/d;

    new-instance v0, Lcom/sigmob/sdk/videoplayer/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/videoplayer/a$1;-><init>(Lcom/sigmob/sdk/videoplayer/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->m:Landroid/os/Handler;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->g:Landroid/view/ViewGroup;

    const/high16 p1, -0x1000000

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/a;->g:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoplayer/a;)Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoplayer/a;->k:Z

    return p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoplayer/a;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/a;->k:Z

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/videoplayer/a;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoplayer/a;->l:Z

    return p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/videoplayer/a;)Lcom/sigmob/sdk/videoplayer/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoplayer/a;->s:Lcom/sigmob/sdk/videoplayer/k;

    return-object p0
.end method

.method private s()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->b:Ljava/lang/Class;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/videoplayer/j;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoplayer/j;-><init>(Lcom/sigmob/sdk/videoplayer/h;)V

    :goto_1
    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    return-void

    :cond_1
    const-class v1, Lcom/sigmob/sdk/videoplayer/a;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/videoplayer/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVideo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/sigmob/sdk/videoplayer/a;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->c(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->m()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->b()V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->e:Lcom/sigmob/sdk/videoplayer/d;

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->i:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->g:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->j:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->h:Lcom/sigmob/sdk/videoplayer/d;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sigmob/sdk/videoplayer/a;->h:I

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    if-nez v0, :cond_2

    return-void

    :cond_2
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/videoplayer/i;->a(J)V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 3
    iput p1, p0, Lcom/sigmob/sdk/videoplayer/a;->t:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/a;->u:Ljava/lang/String;

    sget-object p1, Lcom/sigmob/sdk/videoplayer/d;->l:Lcom/sigmob/sdk/videoplayer/d;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoplayer/a;->setState(Lcom/sigmob/sdk/videoplayer/d;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoplayer/g;I)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/a;->d:Lcom/sigmob/sdk/videoplayer/g;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->c()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePreparing  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/videoplayer/d;->e:Lcom/sigmob/sdk/videoplayer/d;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoplayer/a;->setState(Lcom/sigmob/sdk/videoplayer/d;)V

    return-void
.end method

.method public b(II)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo() called with: what = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], extra = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2bd

    if-eq p1, p2, :cond_1

    const/16 p2, 0x2be

    if-eq p1, p2, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object p1, Lcom/sigmob/sdk/videoplayer/d;->d:Lcom/sigmob/sdk/videoplayer/d;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoplayer/a;->setState(Lcom/sigmob/sdk/videoplayer/d;)V

    return-void

    :cond_1
    sget-object p1, Lcom/sigmob/sdk/videoplayer/d;->c:Lcom/sigmob/sdk/videoplayer/d;

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/a;->l:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/a;->l:Z

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/a;->m:Landroid/os/Handler;

    const/16 p2, 0x1770

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/a;->k:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/a;->k:Z

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateNormal stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/a;->e:Lcom/sigmob/sdk/videoplayer/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/videoplayer/d;->b:Lcom/sigmob/sdk/videoplayer/d;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoplayer/a;->setState(Lcom/sigmob/sdk/videoplayer/d;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->f()V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 3

    .line 3
    iput p2, p0, Lcom/sigmob/sdk/videoplayer/a;->p:I

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/a;->q:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->c:Lcom/sigmob/sdk/videoplayer/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/sigmob/sdk/videoplayer/a;->r:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoplayer/l;->setRotation(F)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->c:Lcom/sigmob/sdk/videoplayer/l;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/videoplayer/l;->a(II)V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/a;->o:Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->e:Lcom/sigmob/sdk/videoplayer/d;

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->b:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/sigmob/sdk/videoplayer/d;->i:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sigmob/sdk/videoplayer/d;->d:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sigmob/sdk/videoplayer/d;->j:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sigmob/sdk/videoplayer/d;->g:Lcom/sigmob/sdk/videoplayer/d;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/i;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->e()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->a()V

    return-void
.end method

.method public e()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePlaying  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->e:Lcom/sigmob/sdk/videoplayer/d;

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->g:Lcom/sigmob/sdk/videoplayer/d;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/a;->h:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/sdk/videoplayer/i;->a(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/a;->h:I

    :cond_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/a;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->m:Landroid/os/Handler;

    const/16 v1, 0x1770

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    sget-object v0, Lcom/sigmob/sdk/videoplayer/d;->h:Lcom/sigmob/sdk/videoplayer/d;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoplayer/a;->setState(Lcom/sigmob/sdk/videoplayer/d;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->f()V

    return-void
.end method

.method public f()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startProgressTimer:  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->l()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->i:Ljava/util/Timer;

    new-instance v2, Lcom/sigmob/sdk/videoplayer/a$a;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/videoplayer/a$a;-><init>(Lcom/sigmob/sdk/videoplayer/a;)V

    iput-object v2, p0, Lcom/sigmob/sdk/videoplayer/a;->j:Lcom/sigmob/sdk/videoplayer/a$a;

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/a;->i:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/a;->w:Z

    return v0
.end method

.method public getCurrentPositionWhenPlaying()J
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->e:Lcom/sigmob/sdk/videoplayer/d;

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->h:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->i:Lcom/sigmob/sdk/videoplayer/d;

    if-ne v0, v1, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->g()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sigmob/sdk/videoplayer/a;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentPositionWhenPlaying: error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/i;->j()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    return-wide v0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/a;->t:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/a;->p:I

    return v0
.end method

.method public getVideoPlayerDataSource()Lcom/sigmob/sdk/videoplayer/g;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->d:Lcom/sigmob/sdk/videoplayer/g;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/a;->q:I

    return v0
.end method

.method public h()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->l()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->c()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->c(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->f()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/videoplayer/d;->k:Lcom/sigmob/sdk/videoplayer/d;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoplayer/a;->setState(Lcom/sigmob/sdk/videoplayer/d;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->h()V

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->e:Lcom/sigmob/sdk/videoplayer/d;

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->b:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->e:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->l:Lcom/sigmob/sdk/videoplayer/d;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->i:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->k()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->d()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->h()V

    return-void
.end method

.method public k()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePause  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/videoplayer/d;->i:Lcom/sigmob/sdk/videoplayer/d;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoplayer/a;->setState(Lcom/sigmob/sdk/videoplayer/d;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->f()V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->i:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/sigmob/sdk/videoplayer/a;->i:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->j:Lcom/sigmob/sdk/videoplayer/a$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/sigmob/sdk/videoplayer/a;->j:Lcom/sigmob/sdk/videoplayer/a$a;

    :cond_1
    return-void
.end method

.method public m()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTextureView ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->c:Lcom/sigmob/sdk/videoplayer/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/a;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/videoplayer/l;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/videoplayer/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->c:Lcom/sigmob/sdk/videoplayer/l;

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/a;->g:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sigmob/sdk/videoplayer/a;->c:Lcom/sigmob/sdk/videoplayer/l;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/a;->o:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->a()V

    return-void
.end method

.method public o()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/videoplayer/d;->g:Lcom/sigmob/sdk/videoplayer/d;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoplayer/a;->setState(Lcom/sigmob/sdk/videoplayer/d;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/a;->n:Z

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoplayer/a;->setMute(Z)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/a;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "mediaInterface start"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->e()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/a;->o:Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const-string v0, "onAttachedToWindow"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public p()V
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/videoplayer/d;->j:Lcom/sigmob/sdk/videoplayer/d;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoplayer/a;->setState(Lcom/sigmob/sdk/videoplayer/d;)V

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->s:Lcom/sigmob/sdk/videoplayer/k;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/a;->h()V

    return-void
.end method

.method public setBufferProgress(I)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoplayer/i;->a(Z)V

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/a;->w:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/a;->n:Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->a:Lcom/sigmob/sdk/videoplayer/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoplayer/i;->a(F)V

    return-void
.end method

.method public setState(Lcom/sigmob/sdk/videoplayer/d;)V
    .locals 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/a;->e:Lcom/sigmob/sdk/videoplayer/d;

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->h:Lcom/sigmob/sdk/videoplayer/d;

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->f(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->b:Lcom/sigmob/sdk/videoplayer/d;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->i:Lcom/sigmob/sdk/videoplayer/d;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->j:Lcom/sigmob/sdk/videoplayer/d;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/sigmob/sdk/videoplayer/d;->k:Lcom/sigmob/sdk/videoplayer/d;

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->g(Landroid/content/Context;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->s:Lcom/sigmob/sdk/videoplayer/k;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/videoplayer/k;->a(Lcom/sigmob/sdk/videoplayer/d;)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a;->c:Lcom/sigmob/sdk/videoplayer/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public setTextureViewContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/a;->g:Landroid/view/ViewGroup;

    return-void
.end method

.method public setUp(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sigmob/sdk/videoplayer/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/videoplayer/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/videoplayer/a;->a(Lcom/sigmob/sdk/videoplayer/g;I)V

    return-void
.end method

.method public setVideoPlayerStatusListener(Lcom/sigmob/sdk/videoplayer/k;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/a;->s:Lcom/sigmob/sdk/videoplayer/k;

    return-void
.end method
