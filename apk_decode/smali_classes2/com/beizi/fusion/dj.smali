.class public Lcom/beizi/fusion/dj;
.super Lcom/beizi/fusion/l3;
.source "SourceFile"


# static fields
.field public static S:Lcom/beizi/fusion/dj;


# instance fields
.field private P:Lcom/beizi/fusion/ej;

.field private Q:Z

.field private R:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/wh;->f:Lcom/beizi/fusion/wh;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/beizi/fusion/l3;-><init>(Landroid/content/Context;Lcom/beizi/fusion/wh;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/beizi/fusion/dj;->Q:Z

    .line 8
    .line 9
    return-void
.end method

.method private N()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->p0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v2, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/beizi/fusion/rn;->H()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->f0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    move v0, v1

    .line 27
    move-object v3, v2

    .line 28
    :goto_0
    const-string v4, "enter BeiZi ad load"

    .line 29
    .line 30
    const-string v5, "BeiZisAd"

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    const/4 v7, 0x3

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-interface {v0, v7}, Lcom/beizi/fusion/ej;->onAdFailedToLoad(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iput-boolean v6, p0, Lcom/beizi/fusion/l3;->g:Z

    .line 55
    .line 56
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 60
    .line 61
    invoke-interface {v0}, Lcom/beizi/fusion/ej;->onAdLoaded()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-interface {v0, v7}, Lcom/beizi/fusion/ej;->onAdFailedToLoad(I)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iput-boolean v6, p0, Lcom/beizi/fusion/l3;->g:Z

    .line 87
    .line 88
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 89
    .line 90
    invoke-interface {v0}, Lcom/beizi/fusion/ej;->onAdLoaded()V

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-static {}, Lcom/beizi/fusion/yp;->c()Lcom/beizi/fusion/yp;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/beizi/fusion/l3;->a:Landroid/content/Context;

    .line 98
    .line 99
    new-instance v4, Lcom/beizi/fusion/dj$a;

    .line 100
    .line 101
    invoke-direct {v4, p0}, Lcom/beizi/fusion/dj$a;-><init>(Lcom/beizi/fusion/dj;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/beizi/fusion/yp;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/beizi/fusion/yp$e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/dj;)Lcom/beizi/fusion/ej;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    return-object p0
.end method

.method public static synthetic a(Lcom/beizi/fusion/dj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/dj;->R:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/beizi/fusion/dj;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/fusion/dj;->Q:Z

    return p1
.end method

.method public static synthetic b(Lcom/beizi/fusion/dj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/dj;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public M()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/dj;->R:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/dj;->Q:Z

    .line 2
    .line 3
    return v0
.end method

.method public P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/fusion/ej;->onAdClicked()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/rn;->a(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/beizi/fusion/ej;->onAdClosed()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/fusion/ej;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/fusion/ej;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->u:Z

    .line 7
    .line 8
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/beizi/fusion/l3;->r:Lcom/beizi/fusion/a5;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/v3;->a(Lcom/beizi/fusion/a5;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v0, "BeiZisAd"

    .line 22
    .line 23
    const-string v1, "enter BeiZi ad show"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/beizi/fusion/ej;->onAdShown()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->j:Z

    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/beizi/fusion/dj$b;

    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/dj$b;-><init>(Lcom/beizi/fusion/dj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 5
    const-string v0, "BeiZisAd"

    const-string v1, "showRewardVideo"

    invoke-static {v0, v1}, Lcom/beizi/fusion/nh;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-object p0, Lcom/beizi/fusion/dj;->S:Lcom/beizi/fusion/dj;

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/beizi/fusion/ej;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    return-void
.end method

.method public a(Lcom/beizi/fusion/rn;)V
    .locals 1

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 16
    invoke-interface {p1, v0}, Lcom/beizi/fusion/ej;->onAdFailedToLoad(I)V

    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/l3;->e(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/l3;->a(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->j0()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/l3;->b(Z)V

    .line 20
    iget-object p1, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 21
    new-instance v0, Lcom/beizi/fusion/dj$c;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/dj$c;-><init>(Lcom/beizi/fusion/dj;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 9
    iget-object p1, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 10
    invoke-interface {p1, p2}, Lcom/beizi/fusion/ej;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/l3;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/beizi/fusion/dj;->S:Lcom/beizi/fusion/dj;

    .line 6
    .line 7
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/dj;->P:Lcom/beizi/fusion/ej;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/beizi/fusion/ej;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
