.class public abstract Lcom/beizi/fusion/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected A:Z

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/util/Map;

.field protected E:Z

.field protected F:Z

.field protected G:Z

.field protected H:Z

.field private I:Z

.field protected J:Landroid/os/Handler;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field public N:Z

.field private O:Ljava/lang/String;

.field protected a:Landroid/content/Context;

.field protected b:Lcom/beizi/fusion/r1;

.field protected c:Lcom/beizi/fusion/rn;

.field protected d:Z

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Lcom/beizi/fusion/wh;

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:Lcom/beizi/fusion/a5;

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Lcom/beizi/fusion/events/EventBean;

.field protected x:Z

.field protected y:Ljava/lang/String;

.field protected z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/wh;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/beizi/fusion/l3;->b:Lcom/beizi/fusion/r1;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->g:Z

    .line 4
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->h:Z

    .line 5
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->i:Z

    .line 6
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->j:Z

    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->I:Z

    .line 8
    new-instance v0, Lcom/beizi/fusion/l3$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/beizi/fusion/l3$a;-><init>(Lcom/beizi/fusion/l3;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/l3;->a:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/beizi/fusion/l3;->m:Lcom/beizi/fusion/wh;

    .line 11
    new-instance v0, Lcom/beizi/fusion/r1;

    invoke-direct {v0, p1}, Lcom/beizi/fusion/r1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/l3;->b:Lcom/beizi/fusion/r1;

    .line 12
    invoke-virtual {v0, p2}, Lcom/beizi/fusion/r1;->a(Lcom/beizi/fusion/wh;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/wh;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/beizi/fusion/l3;->b:Lcom/beizi/fusion/r1;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->g:Z

    .line 16
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->h:Z

    .line 17
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->i:Z

    .line 18
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->j:Z

    .line 19
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->I:Z

    .line 20
    new-instance v0, Lcom/beizi/fusion/l3$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/beizi/fusion/l3$a;-><init>(Lcom/beizi/fusion/l3;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/l3;->a:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/beizi/fusion/l3;->y:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/beizi/fusion/l3;->m:Lcom/beizi/fusion/wh;

    .line 24
    new-instance v0, Lcom/beizi/fusion/r1;

    invoke-direct {v0, p1}, Lcom/beizi/fusion/r1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/l3;->b:Lcom/beizi/fusion/r1;

    .line 25
    invoke-virtual {v0, p2}, Lcom/beizi/fusion/r1;->a(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/beizi/fusion/l3;->b:Lcom/beizi/fusion/r1;

    invoke-virtual {p1, p3}, Lcom/beizi/fusion/r1;->a(Lcom/beizi/fusion/wh;)V

    return-void
.end method

.method private I()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/beizi/fusion/x3;->c()Lcom/beizi/fusion/x3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/x3;->a()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/beizi/fusion/l3$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/beizi/fusion/l3$c;-><init>(Lcom/beizi/fusion/l3;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private J()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/beizi/fusion/l3;->q:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/l3;->b()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/beizi/fusion/l3;->p:I

    .line 10
    .line 11
    if-gtz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/beizi/fusion/l3;->H()Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    int-to-long v2, v0

    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method private K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/beizi/fusion/l3;->k:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/l3;->b:Lcom/beizi/fusion/r1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/r1;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private L()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->t:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->u:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->v:Z

    .line 16
    .line 17
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/beizi/fusion/l3;->r:Lcom/beizi/fusion/a5;

    .line 22
    .line 23
    iget v3, p0, Lcom/beizi/fusion/l3;->q:I

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0, v3}, Lcom/beizi/fusion/v3;->a(Lcom/beizi/fusion/a5;II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method private a()Lcom/beizi/fusion/x1;
    .locals 3

    .line 58
    new-instance v0, Lcom/beizi/fusion/x1;

    invoke-direct {v0}, Lcom/beizi/fusion/x1;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/beizi/fusion/l3;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x1;->d(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x1;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x1;->a(Z)V

    .line 62
    iget-boolean v1, p0, Lcom/beizi/fusion/l3;->K:Z

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x1;->b(Z)V

    .line 63
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 64
    const-string v2, "orderList"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 67
    check-cast v1, Ljava/util/List;

    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x1;->a(Ljava/util/List;)V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    const-string v2, "interactionType"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 73
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x1;->b(I)V

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    const-string v2, "bz_user_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 76
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 77
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/beizi/fusion/l3;->L:Ljava/lang/String;

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    const-string v2, "bz_user_custom_data"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 80
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 81
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/beizi/fusion/l3;->M:Ljava/lang/String;

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    const-string v2, "window_scene"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 84
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 85
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/beizi/fusion/l3;->N:Z

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    const-string v2, "bz_spaceId"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 88
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 89
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/beizi/fusion/l3;->O:Ljava/lang/String;

    .line 90
    :cond_5
    invoke-static {}, Lcom/beizi/fusion/b4;->j()Lcom/beizi/fusion/b4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/fusion/b4;->p()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 91
    new-instance v1, Lcom/beizi/fusion/ci;

    invoke-direct {v1}, Lcom/beizi/fusion/ci;-><init>()V

    invoke-virtual {v1}, Lcom/beizi/fusion/ci;->a()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 93
    invoke-static {v1}, Lcom/beizi/fusion/i3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_6
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x1;->b(Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method public static synthetic a(Lcom/beizi/fusion/l3;)Lcom/beizi/fusion/x1;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/l3;->a()Lcom/beizi/fusion/x1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/beizi/fusion/l3;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/l3;->c(I)V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/l3;ZLjava/lang/String;Lcom/beizi/fusion/a5;Lcom/beizi/fusion/rn;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/beizi/fusion/l3;->a(ZLjava/lang/String;Lcom/beizi/fusion/a5;Lcom/beizi/fusion/rn;)V

    return-void
.end method

.method private declared-synchronized a(ZLjava/lang/String;Lcom/beizi/fusion/a5;Lcom/beizi/fusion/rn;)V
    .locals 2

    monitor-enter p0

    .line 32
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->A:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0, p4, p2}, Lcom/beizi/fusion/l3;->a(Lcom/beizi/fusion/rn;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 34
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/beizi/fusion/l3;->s:Z

    if-eqz p1, :cond_1

    .line 35
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    move-result-object p1

    iget p2, p0, Lcom/beizi/fusion/l3;->q:I

    invoke-virtual {p1, p3, v1, p2}, Lcom/beizi/fusion/v3;->a(Lcom/beizi/fusion/a5;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    .line 36
    :cond_2
    :try_start_2
    iput-boolean v1, p0, Lcom/beizi/fusion/l3;->A:Z

    .line 37
    iput-object p4, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    if-eqz p1, :cond_3

    .line 38
    iput-boolean v1, p0, Lcom/beizi/fusion/l3;->s:Z

    goto :goto_0

    .line 39
    :cond_3
    iput-boolean v1, p0, Lcom/beizi/fusion/l3;->t:Z

    if-eqz p3, :cond_4

    .line 40
    invoke-virtual {p3}, Lcom/beizi/fusion/a5;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    .line 41
    iget-object p2, p0, Lcom/beizi/fusion/l3;->b:Lcom/beizi/fusion/r1;

    if-eqz p2, :cond_4

    .line 42
    invoke-virtual {p2, p1}, Lcom/beizi/fusion/r1;->b(Ljava/lang/String;)V

    .line 43
    :cond_4
    iput-object p3, p0, Lcom/beizi/fusion/l3;->r:Lcom/beizi/fusion/a5;

    .line 44
    iget-object p1, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    if-eqz p1, :cond_5

    .line 45
    invoke-virtual {p1, v1}, Lcom/beizi/fusion/rn;->d(Z)V

    .line 46
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/beizi/fusion/l3;->I()V

    .line 47
    invoke-virtual {p0, p4}, Lcom/beizi/fusion/l3;->a(Lcom/beizi/fusion/rn;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private a(Lcom/beizi/fusion/rn;Lcom/beizi/fusion/a5;)Z
    .locals 3

    const-string v0, "orderList"

    const/4 v1, 0x1

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    if-nez v2, :cond_0

    return v1

    .line 22
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 23
    :cond_1
    iget-object v2, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 24
    :cond_2
    instance-of v2, v0, Ljava/util/List;

    if-nez v2, :cond_3

    return v1

    .line 25
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 27
    :cond_4
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->T()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 29
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    .line 30
    :cond_6
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/beizi/fusion/v3;->a(Lcom/beizi/fusion/a5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private b()V
    .locals 5

    .line 8
    new-instance v0, Lcom/beizi/fusion/x1;

    invoke-direct {v0}, Lcom/beizi/fusion/x1;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/l3;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x1;->d(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 11
    const-string v2, "orderList"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 16
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x1;->a(Ljava/util/List;)V

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    const-string v2, "interactionType"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 20
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x1;->b(I)V

    .line 21
    :cond_1
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    move-result-object v1

    iget-object v2, p0, Lcom/beizi/fusion/l3;->w:Lcom/beizi/fusion/events/EventBean;

    iget v3, p0, Lcom/beizi/fusion/l3;->q:I

    iget-object v4, p0, Lcom/beizi/fusion/l3;->m:Lcom/beizi/fusion/wh;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/beizi/fusion/v3;->a(Lcom/beizi/fusion/events/EventBean;ILcom/beizi/fusion/x1;Lcom/beizi/fusion/wh;)V

    return-void
.end method

.method private c(I)V
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/l3;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/beizi/fusion/qm;->b()Lcom/beizi/fusion/qm;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/l3;->O:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/beizi/fusion/qm;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->M:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public F()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/fusion/rn;->o0()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    return v0
.end method

.method public G()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->h:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/l3;->B:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x3

    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    new-instance v1, Lcom/beizi/fusion/rn;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/beizi/fusion/l3;->B:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/beizi/fusion/l3;->b:Lcom/beizi/fusion/r1;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/beizi/fusion/r1;->a()Lcom/beizi/fusion/wh;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-direct {v1, v3, v5, v4}, Lcom/beizi/fusion/rn;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/beizi/fusion/wh;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/beizi/fusion/rn;->b()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Lcom/beizi/fusion/l3;->a(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {v1}, Lcom/beizi/fusion/rn;->g()Lcom/beizi/fusion/k7;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p0, v2}, Lcom/beizi/fusion/l3;->a(Lcom/beizi/fusion/k7;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    const/16 v0, 0xc

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/l3;->a(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    invoke-virtual {v1}, Lcom/beizi/fusion/rn;->W()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/beizi/fusion/rn;->d()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {p0, v0, v2, v5, v1}, Lcom/beizi/fusion/l3;->a(ZLjava/lang/String;Lcom/beizi/fusion/a5;Lcom/beizi/fusion/rn;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/l3;->C:Ljava/lang/String;

    .line 73
    .line 74
    const-string v1, "S2S"

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lcom/beizi/fusion/l3;->a(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    invoke-direct {p0}, Lcom/beizi/fusion/l3;->J()V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/beizi/fusion/x3;->c()Lcom/beizi/fusion/x3;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/beizi/fusion/x3;->b()Ljava/util/concurrent/ExecutorService;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Lcom/beizi/fusion/l3$b;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/beizi/fusion/l3$b;-><init>(Lcom/beizi/fusion/l3;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public H()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->I:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->I:Z

    .line 9
    .line 10
    iget v2, p0, Lcom/beizi/fusion/l3;->q:I

    .line 11
    .line 12
    if-gtz v2, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    iget-boolean v2, p0, Lcom/beizi/fusion/l3;->s:Z

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0}, Lcom/beizi/fusion/l3;->i()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/v3;->c(Ljava/lang/String;)Lcom/beizi/fusion/a5;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    return v1

    .line 35
    :cond_3
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/beizi/fusion/l3;->m:Lcom/beizi/fusion/wh;

    .line 40
    .line 41
    invoke-virtual {v3, v2, v4}, Lcom/beizi/fusion/v3;->a(Lcom/beizi/fusion/a5;Lcom/beizi/fusion/wh;)Lcom/beizi/fusion/rn;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-nez v3, :cond_4

    .line 46
    .line 47
    return v1

    .line 48
    :cond_4
    iget-boolean v4, p0, Lcom/beizi/fusion/l3;->s:Z

    .line 49
    .line 50
    if-eqz v4, :cond_5

    .line 51
    .line 52
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget v4, p0, Lcom/beizi/fusion/l3;->q:I

    .line 57
    .line 58
    invoke-virtual {v3, v2, v0, v4}, Lcom/beizi/fusion/v3;->a(Lcom/beizi/fusion/a5;II)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_0

    .line 64
    :cond_5
    invoke-direct {p0, v3, v2}, Lcom/beizi/fusion/l3;->a(Lcom/beizi/fusion/rn;Lcom/beizi/fusion/a5;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_6

    .line 69
    .line 70
    return v1

    .line 71
    :cond_6
    const/4 v4, 0x0

    .line 72
    invoke-direct {p0, v1, v4, v2, v3}, Lcom/beizi/fusion/l3;->a(ZLjava/lang/String;Lcom/beizi/fusion/a5;Lcom/beizi/fusion/rn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    return v0

    .line 76
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    return v1
.end method

.method public abstract a(I)V
.end method

.method public a(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 97
    iget-object p2, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/rn;->e(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/16 v1, 0x19

    if-ne p2, v1, :cond_2

    .line 98
    iget-object p2, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/rn;->b(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v1, 0x32

    if-ne p2, v1, :cond_3

    .line 99
    iget-object p2, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/rn;->c(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v1, 0x4b

    if-ne p2, v1, :cond_4

    .line 100
    iget-object p2, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/rn;->d(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_4
    const/16 v1, 0x64

    if-ne p2, v1, :cond_5

    .line 101
    iget-object p2, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/rn;->a(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    .line 102
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/beizi/fusion/events/EventBean;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/beizi/fusion/l3;->w:Lcom/beizi/fusion/events/EventBean;

    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/beizi/fusion/l3;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 5
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCacheNum()I

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/l3;->q:I

    if-lez v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getWaitTime()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getLastTime()I

    move-result v1

    const/16 v2, 0x64

    if-gtz v1, :cond_1

    move v1, v2

    :cond_1
    if-ltz v0, :cond_2

    .line 8
    iget v3, p0, Lcom/beizi/fusion/l3;->o:I

    sub-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/l3;->p:I

    goto :goto_0

    .line 9
    :cond_2
    iget v0, p0, Lcom/beizi/fusion/l3;->o:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/beizi/fusion/l3;->p:I

    .line 10
    :goto_0
    iget v0, p0, Lcom/beizi/fusion/l3;->p:I

    if-gtz v0, :cond_3

    .line 11
    iput v2, p0, Lcom/beizi/fusion/l3;->p:I

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getIsImageSpeed()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->E:Z

    .line 13
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getIsHideInteraction()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->F:Z

    .line 14
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getIsPlaceHolder()I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->G:Z

    .line 15
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getIsAnimation()I

    move-result p1

    if-ne p1, v2, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, p0, Lcom/beizi/fusion/l3;->H:Z

    return-void
.end method

.method public abstract a(Lcom/beizi/fusion/rn;)V
.end method

.method public a(Lcom/beizi/fusion/rn;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    move-result-object v1

    iget-object v4, p0, Lcom/beizi/fusion/l3;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/beizi/fusion/l3;->y:Ljava/lang/String;

    iget-object v6, p0, Lcom/beizi/fusion/l3;->m:Lcom/beizi/fusion/wh;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/beizi/fusion/v3;->a(Lcom/beizi/fusion/rn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/wh;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/beizi/fusion/l3;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/l3;->L()V

    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/rn;->a(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/beizi/fusion/l3;->K:Z

    return-void
.end method

.method public a(Lcom/beizi/fusion/k7;)Z
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/beizi/fusion/l3;->m:Lcom/beizi/fusion/wh;

    sget-object v1, Lcom/beizi/fusion/wh;->b:Lcom/beizi/fusion/wh;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/beizi/fusion/wh;->c:Lcom/beizi/fusion/wh;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/beizi/fusion/wh;->a:Lcom/beizi/fusion/wh;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    sget-object v1, Lcom/beizi/fusion/wh;->g:Lcom/beizi/fusion/wh;

    if-ne v0, v1, :cond_2

    .line 52
    sget-object v0, Lcom/beizi/fusion/k7;->h:Lcom/beizi/fusion/k7;

    if-eq p1, v0, :cond_1

    return v3

    :cond_1
    return v2

    .line 53
    :cond_2
    sget-object v1, Lcom/beizi/fusion/wh;->e:Lcom/beizi/fusion/wh;

    if-ne v0, v1, :cond_4

    .line 54
    sget-object v0, Lcom/beizi/fusion/k7;->e:Lcom/beizi/fusion/k7;

    if-eq p1, v0, :cond_3

    return v3

    :cond_3
    return v2

    .line 55
    :cond_4
    sget-object v1, Lcom/beizi/fusion/wh;->f:Lcom/beizi/fusion/wh;

    if-ne v0, v1, :cond_6

    .line 56
    sget-object v0, Lcom/beizi/fusion/k7;->c:Lcom/beizi/fusion/k7;

    if-eq p1, v0, :cond_5

    return v3

    :cond_5
    return v2

    :cond_6
    return v3

    .line 57
    :cond_7
    :goto_0
    sget-object v0, Lcom/beizi/fusion/k7;->d:Lcom/beizi/fusion/k7;

    if-eq p1, v0, :cond_8

    return v3

    :cond_8
    return v2
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/l3;->o:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/l3;->y:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/l3;->b:Lcom/beizi/fusion/r1;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/r1;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/rn;->b(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/beizi/fusion/l3;->d:Z

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/l3;->B:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/rn;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->a()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/l3;->L()V

    .line 5
    invoke-virtual {p0}, Lcom/beizi/fusion/l3;->e()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/beizi/fusion/l3;->C:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/l3;->e:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/l3;->L:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/beizi/fusion/so;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/beizi/fusion/l3;->K()V

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/beizi/fusion/l3;->K()V

    return-void
.end method

.method public g()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->s()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/l3;->n:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    :cond_0
    return v0
.end method

.method public l()J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/beizi/fusion/l3;->t:Z

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/beizi/fusion/l3;->r:Lcom/beizi/fusion/a5;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_1
    invoke-virtual {v2}, Lcom/beizi/fusion/a5;->a()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-wide v0

    .line 18
    :catch_0
    move-exception v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return-wide v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->u()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->v()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public o()Lcom/beizi/fusion/g5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->w()Lcom/beizi/fusion/g5;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public p()Lcom/beizi/fusion/fl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->y()Lcom/beizi/fusion/fl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->z()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public r()Lorg/json/JSONObject;
    .locals 9

    .line 1
    const-string v0, "materialInfo"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/beizi/fusion/rn;->x()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_1
    iget-object v2, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_2
    iget-object v2, p0, Lcom/beizi/fusion/l3;->D:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    instance-of v4, v2, Ljava/lang/Integer;

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_3
    check-cast v2, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_4
    const/16 v4, 0x65

    .line 54
    .line 55
    const/16 v5, 0x3e9

    .line 56
    .line 57
    if-eq v2, v3, :cond_5

    .line 58
    .line 59
    if-eq v2, v4, :cond_5

    .line 60
    .line 61
    if-eq v2, v5, :cond_5

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_5
    new-instance v6, Lorg/json/JSONObject;

    .line 65
    .line 66
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v7, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 70
    .line 71
    if-eqz v7, :cond_16

    .line 72
    .line 73
    new-instance v7, Lorg/json/JSONObject;

    .line 74
    .line 75
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .line 77
    .line 78
    if-eq v2, v3, :cond_6

    .line 79
    .line 80
    if-eq v2, v4, :cond_6

    .line 81
    .line 82
    if-ne v2, v5, :cond_e

    .line 83
    .line 84
    :cond_6
    iget-object v3, p0, Lcom/beizi/fusion/l3;->m:Lcom/beizi/fusion/wh;

    .line 85
    .line 86
    sget-object v8, Lcom/beizi/fusion/wh;->b:Lcom/beizi/fusion/wh;

    .line 87
    .line 88
    if-ne v3, v8, :cond_7

    .line 89
    .line 90
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->J()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    goto :goto_0

    .line 97
    :cond_7
    sget-object v8, Lcom/beizi/fusion/wh;->g:Lcom/beizi/fusion/wh;

    .line 98
    .line 99
    if-ne v3, v8, :cond_8

    .line 100
    .line 101
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->J()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    goto :goto_0

    .line 108
    :cond_8
    sget-object v8, Lcom/beizi/fusion/wh;->e:Lcom/beizi/fusion/wh;

    .line 109
    .line 110
    if-ne v3, v8, :cond_9

    .line 111
    .line 112
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->E()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    goto :goto_0

    .line 119
    :cond_9
    sget-object v8, Lcom/beizi/fusion/wh;->f:Lcom/beizi/fusion/wh;

    .line 120
    .line 121
    if-ne v3, v8, :cond_a

    .line 122
    .line 123
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->H()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    goto :goto_0

    .line 130
    :cond_a
    sget-object v8, Lcom/beizi/fusion/wh;->c:Lcom/beizi/fusion/wh;

    .line 131
    .line 132
    if-ne v3, v8, :cond_b

    .line 133
    .line 134
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 135
    .line 136
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->d0()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    goto :goto_0

    .line 141
    :cond_b
    move-object v3, v1

    .line 142
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-nez v8, :cond_c

    .line 147
    .line 148
    const-string v8, "http"

    .line 149
    .line 150
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-eqz v8, :cond_c

    .line 155
    .line 156
    const-string v8, "imageUrl"

    .line 157
    .line 158
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    .line 160
    .line 161
    new-instance v8, Lorg/json/JSONArray;

    .line 162
    .line 163
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 167
    .line 168
    .line 169
    const-string v3, "imageUrls"

    .line 170
    .line 171
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    :cond_c
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->f0()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-nez v8, :cond_d

    .line 185
    .line 186
    const-string v8, "videoUrl"

    .line 187
    .line 188
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    :cond_d
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 192
    .line 193
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->i()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-nez v8, :cond_e

    .line 202
    .line 203
    const-string v8, "crid"

    .line 204
    .line 205
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    .line 207
    .line 208
    :cond_e
    if-eq v2, v4, :cond_f

    .line 209
    .line 210
    if-ne v2, v5, :cond_14

    .line 211
    .line 212
    :cond_f
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 213
    .line 214
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->A()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-nez v4, :cond_10

    .line 223
    .line 224
    const-string v4, "deeplinkUrl"

    .line 225
    .line 226
    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    .line 228
    .line 229
    :cond_10
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 230
    .line 231
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->G()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-nez v4, :cond_11

    .line 240
    .line 241
    const-string v4, "landingPageUrl"

    .line 242
    .line 243
    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    .line 245
    .line 246
    :cond_11
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 247
    .line 248
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->B()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-nez v4, :cond_12

    .line 257
    .line 258
    const-string v4, "downloadUrl"

    .line 259
    .line 260
    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    .line 262
    .line 263
    :cond_12
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->N()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-nez v4, :cond_13

    .line 274
    .line 275
    const-string v4, "miniProgramId"

    .line 276
    .line 277
    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    .line 279
    .line 280
    :cond_13
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 281
    .line 282
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->O()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-nez v4, :cond_14

    .line 291
    .line 292
    const-string v4, "miniProgramPath"

    .line 293
    .line 294
    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    .line 296
    .line 297
    :cond_14
    if-ne v2, v5, :cond_15

    .line 298
    .line 299
    iget-object v2, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 300
    .line 301
    invoke-virtual {v2}, Lcom/beizi/fusion/rn;->T()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-nez v3, :cond_15

    .line 310
    .line 311
    const-string v3, "orderId"

    .line 312
    .line 313
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    .line 315
    .line 316
    :cond_15
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .line 318
    .line 319
    :cond_16
    return-object v6

    .line 320
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    .line 322
    .line 323
    return-object v1
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->G()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public t()Lcom/beizi/fusion/qp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->Q()Lcom/beizi/fusion/qp;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public u()Lcom/beizi/fusion/nj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->R()Lcom/beizi/fusion/nj;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public v()Lcom/beizi/fusion/zk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->S()Lcom/beizi/fusion/zk;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->Y()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public z()Lcom/beizi/fusion/rn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    return-object v0
.end method
