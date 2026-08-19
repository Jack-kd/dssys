.class Lcom/ubix/ssp/ad/a$t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/z/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/ad/g/k/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/d/l;

.field final synthetic b:Lcom/ubix/ssp/ad/d/a;

.field final synthetic c:Lcom/ubix/ssp/ad/g/k/c;

.field final synthetic d:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/g/k/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$t;->d:Lcom/ubix/ssp/ad/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/a$t;->a:Lcom/ubix/ssp/ad/d/l;

    iput-object p3, p0, Lcom/ubix/ssp/ad/a$t;->b:Lcom/ubix/ssp/ad/d/a;

    iput-object p4, p0, Lcom/ubix/ssp/ad/a$t;->c:Lcom/ubix/ssp/ad/g/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/a$t;->c:Lcom/ubix/ssp/ad/g/k/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/k/c;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/z/h;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$t;->d:Lcom/ubix/ssp/ad/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/a;Z)Z

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/z/h;->a()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u8c22\u8c22\u60a8\u7684\u53cd\u9988\uff01\u6211\u4eec\u5c06\u7ed9\u60a8\u5e26\u6765\u66f4\u4f18\u8d28\u7684\u5e7f\u544a\u4f53\u9a8c"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "dislikeId"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "dislikeContent"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v2}, Lcom/ubix/ssp/open/UBiXAdSetting;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    const-string v2, "ubix_tx_uid"

    :try_start_2
    sget-object v3, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v3}, Lcom/ubix/ssp/open/UBiXAdSetting;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    const-string v2, "ubix_tx_ctr_config"

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ubix/ssp/ad/a$t;->a:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/d/l;->C()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "ubix_tx_creative_title"

    :try_start_4
    iget-object v3, p0, Lcom/ubix/ssp/ad/a$t;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v2, "ubix_tx_creative_desc"

    :try_start_5
    iget-object v3, p0, Lcom/ubix/ssp/ad/a$t;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v2, "ubix_tx_ad_source"

    :try_start_6
    iget-object v3, p0, Lcom/ubix/ssp/ad/a$t;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v3, v3, Lcom/ubix/ssp/ad/e/y/a/a$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v2, "ubix_tx_ad_render_method"

    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ubix/ssp/ad/a$t;->d:Lcom/ubix/ssp/ad/a;

    iget v4, v4, Lcom/ubix/ssp/ad/a;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$t;->d:Lcom/ubix/ssp/ad/a;

    const-string v2, "EVENT_ATTRS"

    invoke-virtual {v1, v2, v0}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$t;->d:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$t;->d:Lcom/ubix/ssp/ad/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/ubix/ssp/ad/e/w/e;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/a$t;->c:Lcom/ubix/ssp/ad/g/k/c;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcom/ubix/ssp/ad/g/k/c;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 0

    return-void
.end method
