.class Lcom/ubix/ssp/ad/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/y/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->l(Lcom/ubix/ssp/ad/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/d/a;

.field final synthetic b:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$e;->b:Lcom/ubix/ssp/ad/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/a$e;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    const-string v0, "guard"

    const-string v1, "onIstm begin"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a(J)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .line 2
    const-string p1, ""

    const-string v0, "guard"

    const-string v1, "onIstm end"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$e;->b:Lcom/ubix/ssp/ad/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ubix/ssp/ad/a$e;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "EVENT_ATTRS"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "EVENT_CODE_ERROR"

    :try_start_1
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "tx_url"

    :try_start_2
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "tx_api_url"

    :try_start_3
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tx_jmpt"

    const-string v4, "dplink"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "tx_tms"

    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->c()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v3, "tx_hk_tms"

    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->f()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/a$e;->b:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    const-string v0, "09002"

    const-string v2, "dp done"

    :goto_0
    invoke-interface {p1, v1, v0, v2}, Lcom/ubix/ssp/ad/e/w/e;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$e;->b:Lcom/ubix/ssp/ad/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    const-string v0, "09003"

    const-string v2, "dp error"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_1
    :goto_2
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a()V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a()V

    throw p1
.end method

.method public b()Z
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$e;->b:Lcom/ubix/ssp/ad/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$e;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->v0()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "guard"

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->v0()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    const-string v0, "guard"

    const-string v1, "onIstm error"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
