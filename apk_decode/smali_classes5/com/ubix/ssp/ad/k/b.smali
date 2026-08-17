.class public Lcom/ubix/ssp/ad/k/b;
.super Lcom/ubix/ssp/ad/a;

# interfaces
.implements Lcom/ubix/ssp/ad/g/k/h;


# instance fields
.field private C:Lcom/ubix/ssp/ad/g/j;

.field private D:Landroid/content/Context;

.field private E:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected F:Lcom/ubix/ssp/ad/d/a;

.field protected G:J

.field protected H:J

.field private I:Lcom/ubix/ssp/ad/b;

.field protected J:Z

.field protected K:Z

.field private volatile L:Z

.field private M:Z

.field protected N:Lcom/ubix/ssp/ad/d/l;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field S:Z

.field private T:J

.field private U:J

.field private V:Lcom/ubix/ssp/ad/g/h;

.field private final W:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private X:I

.field protected Y:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ubix/ssp/ad/e/z/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/k/b;->J:Z

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/k/b;->K:Z

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/k/b;->M:Z

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/k/b;->O:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->P:Z

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/k/b;->Q:Z

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/k/b;->R:Z

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/k/b;->S:Z

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/ubix/ssp/ad/k/b;->T:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/ubix/ssp/ad/k/b;->U:J

    new-instance v0, Lcom/ubix/ssp/ad/k/b$d;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/k/b$d;-><init>(Lcom/ubix/ssp/ad/k/b;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/b;->V:Lcom/ubix/ssp/ad/g/h;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/b;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p2, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b;->D:Landroid/content/Context;

    const/16 p1, 0x9

    iput p1, p0, Lcom/ubix/ssp/ad/a;->i:I

    return-void
.end method

.method private H()Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->D:Landroid/content/Context;

    if-nez v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result v2

    const-string v3, "IS_DOWNLOAD"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "COUNTDOWN_STATUS"

    :try_start_1
    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->g()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->P()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ubix/ssp/ad/k/b;->T:J

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->Q()I

    move-result v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->O()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-boolean v5, p0, Lcom/ubix/ssp/ad/k/b;->S:Z

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    const-string v3, "\u70b9\u51fb\u5e7f\u544a\u5e76\u505c\u7559%s\u79d2\u83b7\u53d6\u5956\u52b1"

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :pswitch_1
    :try_start_2
    iput-boolean v5, p0, Lcom/ubix/ssp/ad/k/b;->S:Z

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :pswitch_2
    iput-boolean v5, p0, Lcom/ubix/ssp/ad/k/b;->S:Z

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    :goto_0
    const-string v3, "\u70b9\u51fb\u5e76\u8df3\u8f6c\u83b7\u53d6\u5956\u52b1"

    goto :goto_1

    :pswitch_3
    :try_start_3
    iput-boolean v5, p0, Lcom/ubix/ssp/ad/k/b;->Q:Z

    :pswitch_4
    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->S:Z

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    const-string v3, "\u83b7\u53d6\u5956\u52b1"

    :cond_2
    :goto_1
    const-string v6, "REWARD_GUIDE_START_TIME"

    :try_start_4
    iget-object v7, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v7}, Lcom/ubix/ssp/ad/d/l;->u()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "REWARD_GUIDE_AUTO_CLOSE_TIME"

    :try_start_5
    iget-object v7, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v7}, Lcom/ubix/ssp/ad/d/l;->t()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v6, "REWARD_TASK_TIME"

    :try_start_6
    iget-object v7, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v7}, Lcom/ubix/ssp/ad/d/l;->R()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/ubix/ssp/ad/k/b;->U:J

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "REWARD_PLAY_PERCENT"

    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "REWARD_TYPE"

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v2, "REWARD_DURATION"

    :try_start_7
    iget-wide v6, p0, Lcom/ubix/ssp/ad/k/b;->T:J

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "REWARD_DESCRIPTION"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v2, "VIDEO_RENDER_TYPE"

    :try_start_8
    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->k0()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v2, "SUPPORT_FEED_BACK"

    :try_start_9
    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-boolean v3, v3, Lcom/ubix/ssp/ad/e/y/a/a;->k:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v2, "IS_UNNAMED"

    :try_start_a
    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->G0()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->D:Landroid/content/Context;

    const/16 v3, 0x9

    invoke-static {v2, v1, v3, v0}, Lcom/ubix/ssp/ad/b;->a(Landroid/content/Context;Landroid/os/Bundle;IZ)Lcom/ubix/ssp/ad/b;

    move-result-object v1

    iput-object v1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p0}, Lcom/ubix/ssp/ad/b;->setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return v5

    :cond_3
    :goto_2
    return v0

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private L()Z
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->Q:Lcom/ubix/ssp/ad/e/y/a/a$b$g;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$g;->e:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Q()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/j;->onVideoCached()V

    :cond_0
    return-void
.end method

.method private R()V
    .locals 15

    const-string v1, ""

    const-string v2, "\u5173\u95ed\u5e7f\u544a\u65f6\u5c1a\u672a\u6536\u5230\u9a8c\u8bc1\u7ed3\u679c"

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    :try_start_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->R:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v6, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->D:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v7

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v9, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->M:I

    iget-object v10, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->P:Lcom/ubix/ssp/ad/e/y/a/a$b$d;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v11

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v12, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/ubix/ssp/ad/e/w/k;->a(IILcom/ubix/ssp/ad/e/y/a/a$b$d;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v8, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    iget-object v11, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v12, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->M:Z

    const/4 v6, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    move v14, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_2
    move v14, v6

    :goto_3
    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v13, 0x1

    invoke-static/range {v7 .. v14}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Z

    iput-boolean v6, p0, Lcom/ubix/ssp/ad/k/b;->R:Z

    goto :goto_6

    :cond_3
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->n()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->L()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    if-ne v0, v5, :cond_4

    invoke-static {v4, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/j;->onAdClosed()V

    iput-object v3, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->n()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->L()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    if-ne v0, v5, :cond_5

    invoke-static {v4, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/j;->onAdClosed()V

    iput-object v3, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    goto :goto_6

    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/ubix/ssp/ad/k/b$k;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/k/b$k;-><init>(Lcom/ubix/ssp/ad/k/b;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_6
    return-void
.end method

.method private S()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget v1, v1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/s/d;->a(I)Lcom/ubix/ssp/ad/e/s/g/c;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/c;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/c;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_4

    const-string v1, "download complete"

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->D:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/c;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "download file is not valid"

    :goto_0
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_0
    const-string v1, "download file is valid"

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iput-object v0, v1, Lcom/ubix/ssp/ad/d/a;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "install complete"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    check-cast v0, Lcom/ubix/ssp/ad/e/z/g;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :goto_3
    const-string v1, "\u6253\u5f00\u5e94\u7528"

    const/16 v2, -0x3e7

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_3
    const-string v0, "install not complete"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_6
    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    return p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/b;J)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ubix/ssp/ad/k/b;->U:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/ubix/ssp/ad/k/b;->U:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/b;Lcom/ubix/ssp/ad/g/j;)Lcom/ubix/ssp/ad/g/j;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    return-object p1
.end method

.method private a(IZ)V
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/k/b;->n(I)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "REWARD_VIDEO_DIALOG_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->t()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    const-string v3, "REWARD_GUIDE_AUTO_CLOSE_TIME"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "REWARD_VIDEO_DIALOG_AUTO_CLOSE"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    const-string v2, "IS_REWARDED"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result p2

    if-nez p2, :cond_1

    if-ne p1, v0, :cond_1

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p2

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    new-instance v0, Lcom/ubix/ssp/ad/k/b$l;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/k/b$l;-><init>(Lcom/ubix/ssp/ad/k/b;I)V

    new-instance p1, Lcom/ubix/ssp/ad/k/b$a;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/k/b$a;-><init>(Lcom/ubix/ssp/ad/k/b;)V

    invoke-static {p2, v1, v0, p1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)Z

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/b;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->Q()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/b;IZ)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/k/b;->a(IZ)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/b;Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/b;Lcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/b;->f(Lcom/ubix/ssp/open/AdError;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/b;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/b;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/b;->i(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
    .locals 6

    .line 26
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->Q:Lcom/ubix/ssp/ad/e/y/a/a$b$g;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$g;->c:Ljava/lang/String;

    iget v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$g;->d:I

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_0
    const-string v2, ""

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    move-object v5, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/ubix/ssp/ad/g/j;->a(ZLjava/lang/String;ILjava/lang/String;Lcom/ubix/ssp/open/AdError;)V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/ubix/ssp/ad/k/b$c;

    invoke-direct {p2, p0}, Lcom/ubix/ssp/ad/k/b$c;-><init>(Lcom/ubix/ssp/ad/k/b;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 28
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/k/b$e;

    invoke-direct {v1, p0, p2}, Lcom/ubix/ssp/ad/k/b$e;-><init>(Lcom/ubix/ssp/ad/k/b;Z)V

    invoke-interface {v0, p1, v1}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/k/b;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->M:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    return-object p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/k/b;I)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/b;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/k/b;Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->c()Lcom/ubix/ssp/ad/e/v/f;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/k/b$f;

    invoke-direct {v1, p0, p2}, Lcom/ubix/ssp/ad/k/b$f;-><init>(Lcom/ubix/ssp/ad/k/b;Z)V

    invoke-interface {v0, p1, v1}, Lcom/ubix/ssp/ad/e/v/f;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V

    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/k/b;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->Q:Z

    return p1
.end method

.method private c(II)V
    .locals 11

    .line 3
    const-string v2, "__CLICK_AREA__"

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x16

    if-eq p1, v9, :cond_a

    const/16 v6, 0x17

    if-eq p1, v6, :cond_9

    const/4 v6, 0x0

    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_0
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/ubix/ssp/ad/a;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :pswitch_1
    const-string v0, "2"

    :try_start_1
    iget-object v6, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v6}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    const-string v0, "16"

    :try_start_2
    iget-object v6, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v6}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_0

    const-string v0, "17"

    :try_start_3
    iget-object v6, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v6}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v0, :cond_0

    const-string v0, "18"

    :try_start_4
    iget-object v6, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v6}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v0, :cond_0

    const-string v0, "19"

    :try_start_5
    iget-object v6, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v6}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, v0, v8, v2}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/d/a;ZLjava/util/HashMap;)Z

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    if-eq v0, v7, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    if-ne v0, v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    if-ne v0, v3, :cond_5

    :cond_3
    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->S()V

    goto :goto_1

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez v0, :cond_5

    iput-boolean v10, p0, Lcom/ubix/ssp/ad/k/b;->S:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_5

    invoke-direct {p0, v7}, Lcom/ubix/ssp/ad/k/b;->p(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->P()V

    :cond_5
    :goto_1
    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v0}, Lcom/ubix/ssp/ad/k/b;->a(I[Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    if-eq v0, v7, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    if-eq v0, v4, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eq v0, v3, :cond_6

    :try_start_6
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_6

    :cond_6
    :try_start_8
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-array v0, v8, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0}, Lcom/ubix/ssp/ad/k/b;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_6

    :goto_3
    :pswitch_3
    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v10, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {p0, v2, v6, v10}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    goto :goto_4

    :pswitch_4
    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v10, v0}, Lcom/ubix/ssp/ad/k/b;->a(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez v0, :cond_7

    iput-boolean v10, p0, Lcom/ubix/ssp/ad/k/b;->S:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/k/b;->p(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->P()V

    :cond_7
    if-ne p2, v10, :cond_d

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->n()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->L()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    if-ne v0, v7, :cond_8

    const-string v0, "\u5173\u95ed\u5e7f\u544a\u65f6\u5c1a\u672a\u6536\u5230\u9a8c\u8bc1\u7ed3\u679c"

    invoke-static {v5, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    const-string v2, ""

    invoke-direct {p0, v0, v2}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/j;->onAdClosed()V

    iput-object v6, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    return-void

    :cond_9
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v4

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->q()I

    move-result v5

    new-instance v6, Lcom/ubix/ssp/ad/k/b$j;

    invoke-direct {v6, p0}, Lcom/ubix/ssp/ad/k/b$j;-><init>(Lcom/ubix/ssp/ad/k/b;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/a$a0;)V

    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v0}, Lcom/ubix/ssp/ad/k/b;->a(I[Ljava/lang/Object;)V

    return-void

    :cond_a
    :goto_4
    :pswitch_5
    const/16 v2, 0x21

    if-ne p1, v2, :cond_b

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v6}, Lcom/ubix/ssp/ad/k/b;->a(I[Ljava/lang/Object;)V

    :cond_b
    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v2

    if-eq v2, v7, :cond_c

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v2

    if-eq v2, v5, :cond_c

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v2

    if-eq v2, v4, :cond_c

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v2

    if-eq v2, v3, :cond_c

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v3, ""

    :try_start_a
    new-instance v7, Lcom/ubix/ssp/ad/k/b$h;

    invoke-direct {v7, p0}, Lcom/ubix/ssp/ad/k/b$h;-><init>(Lcom/ubix/ssp/ad/k/b;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ubix/ssp/ad/e/a0/d$e;Lcom/ubix/ssp/ad/e/a0/d$d;Lcom/ubix/ssp/ad/e/a0/d$c;)V

    if-ne p1, v9, :cond_d

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v4

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->q()I

    move-result v5

    new-instance v6, Lcom/ubix/ssp/ad/k/b$i;

    invoke-direct {v6, p0}, Lcom/ubix/ssp/ad/k/b$i;-><init>(Lcom/ubix/ssp/ad/k/b;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;ILcom/ubix/ssp/ad/a$a0;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-void

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private c(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    .locals 12
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

    .line 5
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/a;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->L()I

    move-result v5

    iget v6, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->o()I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_1

    move v8, v11

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    iget-object v10, p0, Lcom/ubix/ssp/ad/k/b;->V:Lcom/ubix/ssp/ad/g/h;

    const/4 v9, 0x0

    const/16 v3, 0x9

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v10}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IIIZLcom/ubix/ssp/ad/g/c;Lcom/ubix/ssp/ad/g/h;)I

    move-result p1

    iget-object p2, v1, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result p2

    if-eq p2, v11, :cond_2

    iget-object p2, v1, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    :cond_2
    iget-boolean p2, v1, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez p2, :cond_4

    iput-boolean v11, v1, Lcom/ubix/ssp/ad/k/b;->S:Z

    iget-object p2, v1, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p2, :cond_4

    if-ne p1, v11, :cond_3

    const/4 v11, -0x1

    :cond_3
    invoke-direct {p0, v11}, Lcom/ubix/ssp/ad/k/b;->p(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->P()V

    :cond_4
    iget-boolean p2, v1, Lcom/ubix/ssp/ad/k/b;->M:Z

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/k/b;->c(II)V

    return-void
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/k/b;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/b;->p(I)V

    return-void
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/k/b;)Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcom/ubix/ssp/ad/k/b;->M:Z

    return p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/k/b;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    return p1
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/k/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->n()V

    return-void
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/k/b;)Z
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->L()Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/k/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    return p0
.end method

.method private f(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/j;->onError(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method private g(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/open/AdError;)V

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/open/AdError;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/j;->onError(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public static synthetic h(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method private i(Ljava/lang/String;)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/j;->onVideoRewarded()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->Q:Lcom/ubix/ssp/ad/e/y/a/a$b$g;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$g;->c:Ljava/lang/String;

    iget v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$g;->d:I

    :goto_0
    move v5, v0

    move-object v4, v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/ubix/ssp/ad/g/j;->a(ZLjava/lang/String;ILjava/lang/String;Lcom/ubix/ssp/open/AdError;)V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, "reward"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/b;->a(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public static synthetic j(Lcom/ubix/ssp/ad/k/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic k(Lcom/ubix/ssp/ad/k/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic l(Lcom/ubix/ssp/ad/k/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    return p0
.end method

.method public static synthetic m(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/g/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    return-object p0
.end method

.method private m(Lcom/ubix/ssp/ad/d/a;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->J:Z

    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/b;->n(Lcom/ubix/ssp/ad/d/a;)V

    return-void
.end method

.method public static synthetic n(Lcom/ubix/ssp/ad/k/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/k/b;->U:J

    return-wide v0
.end method

.method private n(I)Landroid/os/Bundle;
    .locals 20

    .line 2
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "TYPE"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    iget-object v6, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v6}, Lcom/ubix/ssp/ad/d/l;->Q()I

    move-result v6

    iget-object v7, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v7}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v7

    const-string v8, ""

    const-string v9, "TASK_TIME"

    const-string v14, "ELAPSE"

    const-string v15, "TITLE_TEMP"

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-wide v7, v0, Lcom/ubix/ssp/ad/k/b;->T:J

    const-wide/16 v16, 0x3e8

    iget-wide v10, v0, Lcom/ubix/ssp/ad/k/b;->G:J

    const-wide/16 v18, 0x64

    int-to-long v12, v6

    mul-long/2addr v10, v12

    div-long v10, v10, v18

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/ubix/ssp/ad/k/b;->T:J

    const/16 v6, 0xa

    :goto_0
    invoke-virtual {v2, v15, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v6}, Lcom/ubix/ssp/ad/d/l;->R()J

    move-result-wide v6

    div-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->c()I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v14, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_1
    const-wide/16 v16, 0x3e8

    const-wide/16 v18, 0x64

    iget-wide v7, v0, Lcom/ubix/ssp/ad/k/b;->T:J

    iget-wide v10, v0, Lcom/ubix/ssp/ad/k/b;->G:J

    int-to-long v12, v6

    mul-long/2addr v10, v12

    div-long v10, v10, v18

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/ubix/ssp/ad/k/b;->T:J

    const/16 v6, 0x9

    goto :goto_0

    :pswitch_2
    const-wide/16 v18, 0x64

    iget-wide v7, v0, Lcom/ubix/ssp/ad/k/b;->T:J

    iget-wide v9, v0, Lcom/ubix/ssp/ad/k/b;->G:J

    int-to-long v11, v6

    mul-long/2addr v9, v11

    div-long v9, v9, v18

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/ubix/ssp/ad/k/b;->T:J

    iget-wide v8, v0, Lcom/ubix/ssp/ad/k/b;->H:J

    sub-long/2addr v6, v8

    const/16 v8, 0x8

    :goto_2
    invoke-virtual {v2, v15, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_3
    long-to-int v6, v6

    div-int/lit16 v6, v6, 0x3e8

    add-int/2addr v6, v5

    goto :goto_1

    :pswitch_3
    const-wide/16 v18, 0x64

    iget-wide v7, v0, Lcom/ubix/ssp/ad/k/b;->T:J

    iget-wide v9, v0, Lcom/ubix/ssp/ad/k/b;->G:J

    int-to-long v11, v6

    mul-long/2addr v9, v11

    div-long v9, v9, v18

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/ubix/ssp/ad/k/b;->T:J

    iget-wide v8, v0, Lcom/ubix/ssp/ad/k/b;->H:J

    sub-long/2addr v6, v8

    const/4 v8, 0x5

    goto :goto_2

    :pswitch_4
    const/4 v6, 0x3

    invoke-virtual {v2, v15, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_4
    invoke-virtual {v2, v14, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_5
    invoke-virtual {v2, v15, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_6
    const-wide/16 v18, 0x64

    iget-wide v7, v0, Lcom/ubix/ssp/ad/k/b;->T:J

    iget-wide v9, v0, Lcom/ubix/ssp/ad/k/b;->G:J

    int-to-long v11, v6

    mul-long/2addr v9, v11

    div-long v9, v9, v18

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/ubix/ssp/ad/k/b;->T:J

    iget-wide v8, v0, Lcom/ubix/ssp/ad/k/b;->H:J

    sub-long/2addr v6, v8

    invoke-virtual {v2, v15, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_0
    :goto_5
    if-nez v1, :cond_1

    const-string v1, "HAS_INDICATE"

    invoke-virtual {v2, v1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget-object v1, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->e:Ljava/lang/String;

    const-string v6, "TITLE"

    invoke-virtual {v2, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->f:Ljava/lang/String;

    const-string v6, "SUB_TITLE"

    invoke-virtual {v2, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->i:Ljava/lang/String;

    const-string v6, "ICON_URL"

    invoke-virtual {v2, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->E:Ljava/lang/String;

    const-string v6, "BUTTON_TEXT"

    invoke-virtual {v2, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/ubix/ssp/ad/k/b;->G:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_2

    move v4, v5

    :cond_2
    const-string v1, "GOT_VIDEO_CACHE"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result v1

    const-string v4, "IS_DOWNLOAD"

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v1, :cond_3

    iget-object v1, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->g:Ljava/lang/String;

    const-string v4, "DOWNLOAD_APP_NAME"

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->A:Ljava/lang/String;

    const-string v4, "DOWNLOAD_APP_VERSION"

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->z:Ljava/lang/String;

    const-string v4, "DOWNLOAD_APP_PUBLISHER"

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->G:J

    const-string v1, "DOWNLOAD_APP_SIZE"

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->H:Ljava/lang/String;

    const-string v4, "DOWNLOAD_APP_ICP_NUMBER"

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->I:Ljava/lang/String;

    const-string v3, "DOWNLOAD_APP_SUITABLE_AGE"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private n(Lcom/ubix/ssp/ad/d/a;)V
    .locals 4

    .line 3
    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->v()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->H()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v0, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const/16 v2, 0x232c

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    const/16 v2, 0x232b

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x232a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2329

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    const-string v0, "\u5e7f\u544a\u6a21\u677fId\u5f02\u5e38,\u6216\u8d44\u6e90\u4e0e\u6a21\u677f\u4e0d\u5339\u914d"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/ubix/ssp/ad/k/b;->a(ILcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/ubix/ssp/ad/k/b;->a(Ljava/lang/String;Z)V

    return-void

    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/ubix/ssp/ad/k/b;->a(Ljava/lang/String;Z)V

    return-void

    :cond_4
    const/4 p1, 0x6

    const-string v0, "\u521b\u5efaViewClass\u5931\u8d25\uff0c\u8bf7\u52ff\u91cd\u8bd5"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/ubix/ssp/ad/k/b;->a(ILcom/ubix/ssp/open/AdError;)V

    return-void
.end method

.method private o(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, "01501"

    return-object p1

    :cond_0
    const-string p1, "01504"

    return-object p1

    :cond_1
    const-string p1, "01503"

    return-object p1

    :cond_2
    const-string p1, "01502"

    return-object p1

    :cond_3
    const-string p1, "01506"

    return-object p1

    :cond_4
    const-string p1, "01505"

    return-object p1
.end method

.method public static synthetic o(Lcom/ubix/ssp/ad/k/b;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method private p(I)V
    .locals 10

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->j()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "EVENT_ATTRS"

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->Q:Lcom/ubix/ssp/ad/e/y/a/a$b$g;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->Q:Lcom/ubix/ssp/ad/e/y/a/a$b$g;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$g;->b:Ljava/lang/String;

    const-string v2, "tx_trans_id"

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->v:Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->v:Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;

    iget-object v0, v0, Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;->userId:Ljava/lang/String;

    const-string v2, "tx_user_id"

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->v:Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;

    iget-object v0, v0, Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;->extra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->v:Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;

    iget-object v0, v0, Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;->extra:Ljava/lang/String;

    const-string v2, "tx_local_extra"

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->L()Z

    move-result v0

    const-string v9, ""

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    sget-object v1, Lcom/ubix/ssp/ad/e/w/j;->G:Lcom/ubix/ssp/ad/e/w/j;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/b;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v5, p1, v9}, Lcom/ubix/ssp/ad/e/w/e;->a(Lcom/ubix/ssp/ad/e/w/j;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/b;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->P()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->Q:Lcom/ubix/ssp/ad/e/y/a/a$b$g;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$g;->f:Ljava/lang/String;

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/e0/a;

    const/16 v2, 0x2710

    invoke-direct {v1, v0, v2}, Lcom/ubix/ssp/ad/e/a0/e0/a;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v2, Lcom/ubix/ssp/ad/k/b$b;

    move-object v3, p0

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/ubix/ssp/ad/k/b$b;-><init>(Lcom/ubix/ssp/ad/k/b;Ljava/util/HashMap;Ljava/util/HashMap;JI)V

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/a0/e0/a;->a(Lcom/ubix/ssp/ad/e/a0/e0/a$c;)V

    const/4 p1, 0x2

    iput p1, v3, Lcom/ubix/ssp/ad/k/b;->X:I

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/e0/a;->a()V

    iget-object p1, v3, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    sget-object v0, Lcom/ubix/ssp/ad/e/w/j;->D:Lcom/ubix/ssp/ad/e/w/j;

    invoke-direct {p0, v8}, Lcom/ubix/ssp/ad/k/b;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v5, v1, v9}, Lcom/ubix/ssp/ad/e/w/e;->a(Lcom/ubix/ssp/ad/e/w/j;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move-object v3, p0

    return-void
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x9

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

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->Q:Lcom/ubix/ssp/ad/e/y/a/a$b$g;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$g;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public G()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    return-object v0
.end method

.method public I()Z
    .locals 6

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-wide v4, v0, Lcom/ubix/ssp/ad/d/a;->j:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->K:Z

    return v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->J:Z

    return v0
.end method

.method public M()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->J()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public N()Z
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_1

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public O()V
    .locals 1

    const/16 v0, 0x9

    invoke-super {p0, v0}, Lcom/ubix/ssp/ad/a;->m(I)V

    return-void
.end method

.method public P()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRewardDialogStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/z/g;

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/z/g;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/z/g;

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/z/g;->b(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/z/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/z/g;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ubix/ssp/ad/e/s/e;",
            ")",
            "Lcom/ubix/ssp/ad/a$z;"
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/ubix/ssp/ad/a;->i:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/k/b$g;

    move-object v5, p1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ubix/ssp/ad/k/b$g;-><init>(Lcom/ubix/ssp/ad/k/b;Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 5
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;)V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoPlayError :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    const-string v0, "\u7f13\u51b2\u8d85\u65f6"

    invoke-static {p2, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ubix/ssp/ad/g/j;->onError(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez p1, :cond_1

    const/4 p1, -0x2

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/b;->p(I)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->R()V

    :cond_1
    return-void
.end method

.method public a(IJJ)V
    .locals 9

    .line 7
    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-lez v3, :cond_1

    iget v3, p0, Lcom/ubix/ssp/ad/a;->i:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-wide/16 v1, 0x1388

    :cond_0
    move-wide v7, v1

    iput-wide p4, p0, Lcom/ubix/ssp/ad/k/b;->G:J

    iput-wide p2, p0, Lcom/ubix/ssp/ad/k/b;->H:J

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;IJJJ)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/k/b;->S:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ubix/ssp/ad/k/b;->p(I)V

    :cond_1
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 0

    .line 8
    invoke-super {p0, p2}, Lcom/ubix/ssp/ad/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 0

    .line 9
    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->y()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/ad/d/a;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->c(Lcom/ubix/ssp/ad/d/a;)V

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/j;->onAdExposed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
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
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;)V

    return-void
.end method

.method public a(ILcom/ubix/ssp/ad/d/a;)V
    .locals 1

    .line 10
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(ILcom/ubix/ssp/ad/d/a;)V

    sget-boolean p1, Lcom/ubix/ssp/ad/d/b;->v:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 11
    invoke-super {p0, p2}, Lcom/ubix/ssp/ad/a;->c(Lcom/ubix/ssp/open/AdError;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->J:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ubix/ssp/ad/g/j;->onError(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    iget p2, p0, Lcom/ubix/ssp/ad/a;->i:I

    const/16 v0, 0x9

    if-ne p2, v0, :cond_6

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
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->m0()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/j;->onVideoClicked()V

    :cond_6
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_0

    invoke-super {p0, v0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 17

    .line 15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    if-eqz v1, :cond_e

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    iget-object v3, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    const/16 v4, 0x9

    const-string v5, "\u5185\u5bb9\u52a0\u8f7d\u5931\u8d25"

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v3, :cond_1

    iget-object v6, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    invoke-static {v4, v5}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/k/b;->e(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->J()Z

    move-result v4

    const/4 v6, 0x3

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const-string v1, "\u5e7f\u544a\u91cd\u590d\u5c55\u793a"

    invoke-static {v6, v1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->c(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->K()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x5

    invoke-static {v1, v5}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->I()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const-string v1, "\u6587\u4ef6\u5df2\u7ecf\u8fc7\u671f"

    :goto_2
    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/k/b;->n(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->N()Z

    move-result v5

    const-string v7, "IMAGE_URL"

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    const-string v7, "VIDEO_URL"

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/d/l;->K0()Z

    move-result v5

    const-string v7, "AUTO_MUTE"

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_6
    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/k/b;->N()Z

    move-result v5

    const-string v7, "IS_VIDEO"

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "TEMPLATE_ID"

    const v7, 0x182b9

    invoke-virtual {v4, v5, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/d/l;->G0()Z

    move-result v5

    const-string v7, "IS_UNNAMED"

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/d/l;->b()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->t:Ljava/lang/String;

    const-string v7, "AD_SOURCE"

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    if-eqz v5, :cond_8

    iget v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->b:I

    if-eqz v5, :cond_8

    const-string v7, "RENDER_MODE"

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->c:I

    int-to-float v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v5, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v5, v7

    const-string v7, "SCALE_IGNORE_PERCENT"

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->d:I

    const-string v7, "SCALE_HORIZONTAL_MARGIN"

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->e:I

    const-string v7, "SCALE_VERTICAL_MARGIN"

    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v5

    if-eq v5, v2, :cond_a

    iget-object v2, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v2

    if-eq v2, v6, :cond_a

    iget-object v2, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_9

    goto :goto_4

    :cond_9
    move v2, v1

    goto :goto_5

    :cond_a
    :goto_4
    move v2, v7

    :goto_5
    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-boolean v5, v5, Lcom/ubix/ssp/ad/d/a;->w:Z

    if-eqz v5, :cond_b

    goto :goto_6

    :cond_b
    iget-object v5, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v5}, Lcom/ubix/ssp/ad/d/l;->r()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    iget-object v1, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/d/l;->r()I

    move-result v1

    :goto_6
    const-string v2, "VIDEO_ECTR"

    invoke-virtual {v4, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->g:Ljava/lang/String;

    const-string v2, "DOWNLOAD_APP_NAME"

    invoke-virtual {v4, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v1, v4}, Lcom/ubix/ssp/ad/b;->b(Landroid/os/Bundle;)Z

    iget-object v1, v0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    iget-object v2, v0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->e0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/b;->setShowCloseBtnDelay(I)V

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v8, v0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    iget-object v9, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->g:Ljava/lang/String;

    iget-object v10, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->A:Ljava/lang/String;

    iget-object v11, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->z:Ljava/lang/String;

    iget-object v12, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    iget-object v13, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->H:Ljava/lang/String;

    iget-object v14, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->I:Ljava/lang/String;

    iget-wide v1, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->G:J

    move-wide v15, v1

    invoke-virtual/range {v8 .. v16}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_d
    iput-boolean v7, v0, Lcom/ubix/ssp/ad/k/b;->K:Z

    return-void

    :cond_e
    const-string v1, "Activity/Context\u4e3a\u7a7a"

    goto/16 :goto_2
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V
    .locals 3

    .line 16
    invoke-super/range {p0 .. p5}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V

    move-object p1, p0

    iget-object p2, p1, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result p2

    const/4 p5, 0x6

    const/4 v0, 0x5

    if-eq p2, p5, :cond_0

    iget-object p2, p1, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result p2

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "duration="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p1, Lcom/ubix/ssp/ad/k/b;->U:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ";"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-wide p2, p1, Lcom/ubix/ssp/ad/k/b;->U:J

    sub-long/2addr p2, v1

    iput-wide p2, p1, Lcom/ubix/ssp/ad/k/b;->U:J

    iget-boolean p2, p1, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez p2, :cond_1

    iget-wide p2, p1, Lcom/ubix/ssp/ad/k/b;->U:J

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-lez p2, :cond_1

    :try_start_0
    iget-object p2, p1, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/e/z/g;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->c()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/ubix/ssp/ad/e/z/g;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_1
    iget-boolean p2, p1, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/ubix/ssp/ad/k/b;->S:Z

    iget-object p2, p1, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p2, :cond_2

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/k/b;->p(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->P()V

    :cond_2
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    .line 17
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

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/b;->g(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    const/16 v0, 0x9

    iput v0, p1, Lcom/ubix/ssp/ad/d/a;->e:I

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/k/b;->m(Lcom/ubix/ssp/ad/d/a;)V

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

    .line 18
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/g/j;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ubix/ssp/ad/a;->v:Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/ubix/ssp/ad/a;->z:Ljava/util/HashMap;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    return v0
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;ZLjava/util/HashMap;)Z
    .locals 5
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

    .line 31
    iget v0, p0, Lcom/ubix/ssp/ad/a;->i:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ZLjava/util/HashMap;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v1

    iget v2, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {v1, v2}, Lcom/ubix/ssp/ad/e/s/d;->b(I)I

    move-result v1

    const/16 v2, 0x2f

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iput-object v3, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerGlobalDownloadWindow status="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-nez p2, :cond_4

    const/16 p2, 0x2c

    if-ne v1, p2, :cond_4

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p2

    iget-object p3, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget p1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p2, p3, p1}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->Y:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/g;

    const-string p2, "\u4e0b\u8f7d\u7ee7\u7eed"

    const/16 p3, -0x3e7

    invoke-virtual {p1, p2, p3}, Lcom/ubix/ssp/ad/e/z/g;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p1, p2, v3}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;Ljava/lang/String;)V

    :cond_3
    return v0

    :cond_4
    const/16 p2, 0x2d

    if-ne v1, p2, :cond_6

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget v2, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p2, v1, v2}, Lcom/ubix/ssp/ad/e/s/d;->b(Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->y:Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p0, p3, p1, p2}, Lcom/ubix/ssp/ad/k/b;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    :cond_5
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;)V

    return v0

    :cond_6
    const/16 p2, 0x2b

    if-eq v1, p2, :cond_7

    const/16 p2, 0x2e

    if-ne v1, p2, :cond_9

    :cond_7
    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->y:Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p0, p3, p2, v1}, Lcom/ubix/ssp/ad/k/b;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p2

    iput-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    :cond_8
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p2

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p2, v1}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;)V

    :cond_9
    iget-object p2, p0, Lcom/ubix/ssp/ad/a;->r:Lcom/ubix/ssp/ad/a$z;

    if-nez p2, :cond_a

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

    :cond_a
    const/4 p1, 0x1

    return p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/k/b;->a(IZ)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->D:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->F:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoVisibilityChange ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->O:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->S()V

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

    .line 6
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/a;->q:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->getClickMap()Ljava/util/HashMap;

    move-result-object p3

    const-string p1, "__CLICK_TRIGGER__"

    const-string p2, ""

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p2, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;Ljava/util/HashMap;)V

    return-void
.end method

.method public b(ILcom/ubix/ssp/ad/d/a;)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(ILcom/ubix/ssp/ad/d/a;)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/k/b;->a(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V
    .locals 2

    .line 8
    invoke-super/range {p0 .. p5}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "landing page rewarded ? "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "error"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p4, p1, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p4}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p1, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p4}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result p4

    const/4 v0, 0x6

    if-eq p4, v0, :cond_0

    iget-object p4, p1, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p4}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result p4

    const/4 v0, 0x5

    if-eq p4, v0, :cond_0

    if-nez p3, :cond_0

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/BroadcastReceiver;)V

    iget-boolean p2, p1, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/ubix/ssp/ad/k/b;->S:Z

    iget-object p2, p1, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    invoke-direct {p0, p2}, Lcom/ubix/ssp/ad/k/b;->p(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->P()V

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

    .line 11
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v0, :cond_0

    invoke-super {p0, v0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z
    .locals 4
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

    .line 12
    iget v0, p0, Lcom/ubix/ssp/ad/a;->i:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z

    :cond_0
    iget p1, p0, Lcom/ubix/ssp/ad/a;->i:I

    const/4 v0, 0x1

    if-ne p1, v1, :cond_3

    const-string p1, "__NO_CLICK_CONFIRM_KEY__"

    const-string v1, "TRUE"

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "__CAN_RUN_ACTIVE_KEY__"

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    if-eqz p1, :cond_1

    sget v2, Lcom/ubix/ssp/ad/d/b;->E:I

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/b;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->B()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-boolean v2, p1, Lcom/ubix/ssp/ad/d/a;->n:Z

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->m:Ljava/lang/String;

    const-string v2, "__AUCTION_PRICE__"

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    const/16 v2, 0xc9

    invoke-virtual {p0, p1, p2, v2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;I)V

    const-string p1, "__MULTI_CLICK_KEY__"

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :try_start_0
    new-array v1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/ubix/ssp/ad/k/b;->a(I[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const-string v2, "cancel"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/b;->k()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v1, p1}, Lcom/ubix/ssp/ad/b;->a(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/k/b;->c(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    :cond_3
    return v0
.end method

.method public c()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ubix/ssp/ad/k/b;->U:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x3e8

    if-ltz v2, :cond_0

    cmp-long v2, v0, v3

    if-gez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    div-long/2addr v0, v3

    long-to-int v0, v0

    return v0
.end method

.method public c(I)V
    .locals 8

    .line 2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->M:Z

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->o()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    iget-object p1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-wide v2, p0, Lcom/ubix/ssp/ad/k/b;->H:J

    iget-wide v4, p0, Lcom/ubix/ssp/ad/k/b;->G:J

    move-wide v6, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;JJJ)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->R()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/j;->onVideoPlayCompleted()V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V
    .locals 0

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/ubix/ssp/ad/a;->c(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V

    move-object p1, p0

    iget p2, p1, Lcom/ubix/ssp/ad/a;->i:I

    const/16 p3, 0x9

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p2}, Lcom/ubix/ssp/ad/k/b;->a(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    return v0
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public e(I)V
    .locals 6

    .line 2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->A0()Z

    move-result p1

    const/4 v0, 0x3

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->S:Z

    if-nez p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->M:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->E:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ubix/ssp/ad/k/b;->a(IZ)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->A0()Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "\u5173\u95ed\u5e7f\u544a\u65f6\u5c1a\u672a\u6536\u5230\u9a8c\u8bc1\u7ed3\u679c"

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/a;->q:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->R()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->L()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez p1, :cond_9

    iget p1, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    if-ne p1, v5, :cond_9

    goto :goto_1

    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/a;->g:Z

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->R()V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->L()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez p1, :cond_7

    iget p1, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    if-ne p1, v5, :cond_7

    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/j;->onAdClosed()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    return-void

    :cond_8
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->L()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez p1, :cond_9

    iget p1, p0, Lcom/ubix/ssp/ad/k/b;->X:I

    if-ne p1, v5, :cond_9

    :goto_1
    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->a(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/j;->onAdClosed()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    :cond_a
    return-void
.end method

.method public e(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    .line 3
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/j;->onError(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->S:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->S:Z

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->S()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/k/b;->p(I)V

    :cond_2
    return-void
.end method

.method public f(I)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->D:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->C:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public g()Z
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->P:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->Q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b;->L:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/k/b;->P:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public h()V
    .locals 3

    .line 2
    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->h()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/b;->j()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/k/b;->I:Lcom/ubix/ssp/ad/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    iput-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    return-void

    :goto_3
    iput-object v0, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    throw v1
.end method

.method public h(I)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/j;->onVideoPlayStarted()V

    :cond_0
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

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public i(I)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b;->D:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/b;->N:Lcom/ubix/ssp/ad/d/l;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/e/a0/f;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/d/l;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/a;)Z

    :cond_0
    return-void
.end method

.method public j(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/AdError;
    .locals 7

    .line 2
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const/16 v2, 0x232b

    const-string v3, "\u6807\u9898\u5185\u5bb9\u5f02\u5e38"

    const/16 v4, 0xf

    const-string v5, "ICON\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    const/16 v6, 0xe

    if-eq v1, v2, :cond_8

    const/16 v2, 0x232c

    if-ne v1, v2, :cond_0

    goto :goto_4

    :cond_0
    const/16 v2, 0x2329

    if-eq v1, v2, :cond_2

    const/16 v2, 0x232a

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

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v6, v5}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_2
    const/16 p1, 0xc

    const-string v0, "\u89c6\u9891\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto :goto_0

    :cond_7
    :goto_3
    const/16 p1, 0xd

    const-string v0, "\u5c01\u9762\u56fe\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto :goto_0

    :cond_8
    :goto_4
    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-eqz v0, :cond_c

    array-length v1, v0

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v6, v5}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_a
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1

    :cond_c
    :goto_5
    const/16 p1, 0xa

    const-string v0, "\u56fe\u7247\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto/16 :goto_0
.end method

.method public j(I)V
    .locals 0

    .line 3
    return-void
.end method

.method public o(Lcom/ubix/ssp/ad/d/a;)Z
    .locals 1

    .line 3
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ubix/ssp/ad/k/b;->b(Ljava/lang/String;Z)V

    return v0
.end method

.method public q(I)V
    .locals 0

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->w()V

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->u()V

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->C:Lcom/ubix/ssp/ad/g/j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/j;->onAdLoadSucceed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/k/b;->N()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b;->F:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/k/b;->o(Lcom/ubix/ssp/ad/d/a;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/ubix/ssp/ad/k/b;->Q()V

    :goto_1
    return-void
.end method

.method public x()V
    .locals 0

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->x()V

    return-void
.end method
