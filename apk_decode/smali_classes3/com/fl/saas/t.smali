.class public Lcom/fl/saas/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/fl/saas/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/fl/saas/t;
    .locals 2

    .line 2
    sget-object v0, Lcom/fl/saas/t;->a:Lcom/fl/saas/t;

    if-nez v0, :cond_0

    const-class v0, Lcom/fl/saas/t;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/fl/saas/t;

    invoke-direct {v1}, Lcom/fl/saas/t;-><init>()V

    sput-object v1, Lcom/fl/saas/t;->a:Lcom/fl/saas/t;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/fl/saas/t;->a:Lcom/fl/saas/t;

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "__ACTION_ID__"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, "__CLICK_ID__"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "__TS__"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/fl/saas/j;)V
    .locals 3

    .line 3
    sget-boolean v0, Lcom/fl/saas/u;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d..."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/fl/saas/adx/base/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "pojo"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u7b49\u5f85\u5f53\u524d\u4efb\u52a1\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/fl/saas/j;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/fl/saas/t;->a(Landroid/content/Context;Ljava/lang/String;Lcom/fl/saas/j;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/fl/saas/j;I)V
    .locals 3

    .line 6
    :try_start_0
    const-string v0, "FLSDK-Download"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/fl/saas/t;->a(Lcom/fl/saas/j;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/fl/saas/j;ILjava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u62a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq p2, v0, :cond_a

    const/4 v0, 0x7

    if-eq p2, v1, :cond_7

    const/4 v1, 0x6

    if-eq p2, v1, :cond_4

    if-eq p2, v0, :cond_1

    const/4 p2, 0x0

    goto/16 :goto_4

    :cond_1
    iget-object p2, p1, Lcom/fl/saas/j;->X0:Ljava/util/List;

    if-eqz p2, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v0, p3}, Lcom/fl/saas/t;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/fl/saas/j;->X0:Ljava/util/List;

    :cond_3
    iget-object p2, p1, Lcom/fl/saas/j;->X0:Ljava/util/List;

    goto :goto_4

    :cond_4
    iget-object p2, p1, Lcom/fl/saas/j;->W0:Ljava/util/List;

    if-eqz p2, :cond_6

    move v0, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v1, p3}, Lcom/fl/saas/t;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/fl/saas/j;->W0:Ljava/util/List;

    :cond_6
    iget-object p2, p1, Lcom/fl/saas/j;->W0:Ljava/util/List;

    goto :goto_4

    :cond_7
    iget-object p2, p1, Lcom/fl/saas/j;->V0:Ljava/util/List;

    if-eqz p2, :cond_9

    move v1, v2

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v0, p3}, Lcom/fl/saas/t;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/fl/saas/j;->V0:Ljava/util/List;

    :cond_9
    iget-object p2, p1, Lcom/fl/saas/j;->V0:Ljava/util/List;

    goto :goto_4

    :cond_a
    iget-object p2, p1, Lcom/fl/saas/j;->U0:Ljava/util/List;

    if-eqz p2, :cond_c

    move v0, v2

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v1, p3}, Lcom/fl/saas/t;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/fl/saas/j;->U0:Ljava/util/List;

    :cond_c
    iget-object p2, p1, Lcom/fl/saas/j;->U0:Ljava/util/List;

    :goto_4
    if-nez p2, :cond_d

    goto :goto_6

    :cond_d
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_e

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p1, Lcom/fl/saas/j;->z1:Ljava/lang/String;

    invoke-direct {p0, p3, v0}, Lcom/fl/saas/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/t$a;

    invoke-direct {v1, p0}, Lcom/fl/saas/t$a;-><init>(Lcom/fl/saas/t;)V

    invoke-virtual {v0, p3, v1}, Lcom/fl/saas/Y;->a(Ljava/lang/String;Lcom/fl/saas/T;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-void
.end method
