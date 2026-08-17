.class public Lcom/beizi/fusion/ij;
.super Lcom/beizi/fusion/l3;
.source "SourceFile"


# instance fields
.field private P:Lcom/beizi/fusion/jo;

.field private Q:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/wh;->c:Lcom/beizi/fusion/wh;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/beizi/fusion/l3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/wh;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/ij;)Lcom/beizi/fusion/jo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/ij;->P:Lcom/beizi/fusion/jo;

    return-object p0
.end method

.method public static synthetic a(Lcom/beizi/fusion/ij;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/fusion/l3;->u:Z

    return p1
.end method

.method public static synthetic b(Lcom/beizi/fusion/ij;)Lcom/beizi/fusion/rn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/beizi/fusion/ij;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/beizi/fusion/ij;)Lcom/beizi/fusion/rn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/beizi/fusion/ij;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic f(Lcom/beizi/fusion/ij;)Lcom/beizi/fusion/a5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->r:Lcom/beizi/fusion/a5;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/beizi/fusion/ij;->P:Lcom/beizi/fusion/jo;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->j:Z

    .line 54
    iget-object v0, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 55
    new-instance v1, Lcom/beizi/fusion/ij$b;

    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/ij$b;-><init>(Lcom/beizi/fusion/ij;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/beizi/fusion/ij;->Q:Landroid/view/View;

    .line 5
    new-instance v0, Lcom/beizi/fusion/ij$a;

    invoke-direct {v0, p0, p1}, Lcom/beizi/fusion/ij$a;-><init>(Lcom/beizi/fusion/ij;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;)V
    .locals 12

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/ij;->P:Lcom/beizi/fusion/jo;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_11

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/ij;->Q:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getClickType()I

    move-result v8

    const/16 v0, 0xa

    if-ne v8, v0, :cond_6

    .line 10
    iget-object p1, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 11
    :cond_2
    iget-boolean p1, p0, Lcom/beizi/fusion/l3;->d:Z

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/beizi/fusion/ij;->Q:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_4

    goto/16 :goto_1

    .line 13
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/beizi/ad/internal/activity/DownloadAppInfoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    iget-object v1, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    invoke-virtual {v1}, Lcom/beizi/fusion/rn;->j()Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    invoke-virtual {v2}, Lcom/beizi/fusion/rn;->o()Ljava/lang/String;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->n()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    move-object v2, v3

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->p()Ljava/lang/String;

    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    invoke-virtual {v4}, Lcom/beizi/fusion/rn;->r()Ljava/lang/String;

    move-result-object v4

    .line 20
    const-string v5, "title_content_key"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v1, "privacy_content_key"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v1, "permission_content_key"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v1, "intro_content_key"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :cond_6
    const/16 v0, 0x14

    if-ne v8, v0, :cond_7

    .line 26
    iget-object p1, p0, Lcom/beizi/fusion/ij;->P:Lcom/beizi/fusion/jo;

    invoke-interface {p1}, Lcom/beizi/fusion/jo;->onAdClosed()V

    return-void

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    if-nez v0, :cond_8

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x1

    .line 28
    invoke-virtual {v0, v9}, Lcom/beizi/fusion/rn;->c(Z)V

    .line 29
    new-instance v3, Lcom/beizi/fusion/h5;

    invoke-direct {v3}, Lcom/beizi/fusion/h5;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getDownX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 31
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getDownX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/fusion/h5;->g(Ljava/lang/String;)V

    .line 32
    :cond_9
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getDownY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 33
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getDownY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/fusion/h5;->h(Ljava/lang/String;)V

    .line 34
    :cond_a
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getDownRawX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 35
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getDownRawX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/fusion/h5;->e(Ljava/lang/String;)V

    .line 36
    :cond_b
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getDownRawY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 37
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getDownRawY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/fusion/h5;->f(Ljava/lang/String;)V

    .line 38
    :cond_c
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getUpX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 39
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getUpX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/fusion/h5;->c(Ljava/lang/String;)V

    .line 40
    :cond_d
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getUpY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 41
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getUpY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/fusion/h5;->d(Ljava/lang/String;)V

    .line 42
    :cond_e
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getUpRawX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 43
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getUpRawX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/fusion/h5;->a(Ljava/lang/String;)V

    .line 44
    :cond_f
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getUpRawY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 45
    invoke-virtual {p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedActionData;->getUpRawY()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/beizi/fusion/h5;->b(Ljava/lang/String;)V

    .line 46
    :cond_10
    iget-object v1, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    iget-object v2, p0, Lcom/beizi/fusion/ij;->Q:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v10, 0xa

    add-long/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/beizi/fusion/l3;->i:Z

    iget-object v7, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    .line 48
    invoke-virtual/range {v1 .. v8}, Lcom/beizi/fusion/rn;->a(Landroid/view/View;Lcom/beizi/fusion/h5;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 49
    iput-boolean v9, p0, Lcom/beizi/fusion/l3;->i:Z

    .line 50
    iget-object p1, p0, Lcom/beizi/fusion/ij;->P:Lcom/beizi/fusion/jo;

    invoke-interface {p1}, Lcom/beizi/fusion/jo;->onAdClick()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_11
    :goto_1
    return-void

    .line 51
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/beizi/fusion/jo;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/ij;->P:Lcom/beizi/fusion/jo;

    return-void
.end method

.method public a(Lcom/beizi/fusion/rn;)V
    .locals 6

    .line 56
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->d0()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    .line 58
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/ij;->a(I)V

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/l3;->e(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/l3;->a(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->j0()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/l3;->b(Z)V

    .line 62
    new-instance v0, Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;

    invoke-direct {v0}, Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->I()Lcom/beizi/fusion/rn$e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v1}, Lcom/beizi/fusion/rn$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;->setIconUrl(Ljava/lang/String;)V

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->h()Lcom/beizi/fusion/rn$e;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {v1}, Lcom/beizi/fusion/rn$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;->setTextUrl(Ljava/lang/String;)V

    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;->setPrice(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->j0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->j()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->k()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->q()Ljava/lang/String;

    move-result-object v3

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5e94\u7528\u540d\u79f0\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | \u5f00\u53d1\u8005\uff1a"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | \u5e94\u7528\u7248\u672c\uff1a"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | \u6743\u9650\u8be6\u60c5 | \u9690\u79c1\u534f\u8bae | \u529f\u80fd\u4ecb\u7ecd"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;->setElements(Ljava/lang/String;)V

    .line 75
    :cond_3
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->j0()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;->setDownloadApp(Z)V

    .line 76
    iget-object p1, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    if-eqz p1, :cond_4

    .line 77
    new-instance v1, Lcom/beizi/fusion/ij$c;

    invoke-direct {v1, p0, v0}, Lcom/beizi/fusion/ij$c;-><init>(Lcom/beizi/fusion/ij;Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
