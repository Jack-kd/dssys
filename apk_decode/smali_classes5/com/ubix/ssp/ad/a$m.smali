.class Lcom/ubix/ssp/ad/a$m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ubix/ssp/ad/e/a0/d$e;Lcom/ubix/ssp/ad/e/a0/d$d;Lcom/ubix/ssp/ad/e/a0/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/ubix/ssp/ad/e/a0/d$c;

.field final synthetic d:Lcom/ubix/ssp/ad/e/a0/d;

.field final synthetic e:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;Ljava/lang/String;Landroid/content/Context;Lcom/ubix/ssp/ad/e/a0/d$c;Lcom/ubix/ssp/ad/e/a0/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$m;->e:Lcom/ubix/ssp/ad/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/a$m;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/a$m;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/ubix/ssp/ad/a$m;->c:Lcom/ubix/ssp/ad/e/a0/d$c;

    iput-object p5, p0, Lcom/ubix/ssp/ad/a$m;->d:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$m;->e:Lcom/ubix/ssp/ad/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "ubix_dp_tag_id"

    :try_start_1
    iget-object v3, p0, Lcom/ubix/ssp/ad/a$m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "EVENT_DURATION"

    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "EVENT_ATTRS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$m;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v1

    const-string v2, "04001"

    const-string v3, ""

    invoke-interface {v1, v0, v2, v3}, Lcom/ubix/ssp/ad/e/w/e;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$m;->c:Lcom/ubix/ssp/ad/e/a0/d$c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/d$c;->a(J)V

    :cond_1
    return-void
.end method

.method public b(J)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockPredict-onReturned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$m;->d:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$m;->e:Lcom/ubix/ssp/ad/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "ubix_dp_tag_id"

    :try_start_2
    iget-object v3, p0, Lcom/ubix/ssp/ad/a$m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, "EVENT_DURATION"

    :try_start_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "EVENT_ATTRS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$m;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v1

    const-string v2, "04002"

    const-string v3, ""

    invoke-interface {v1, v0, v2, v3}, Lcom/ubix/ssp/ad/e/w/e;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$m;->c:Lcom/ubix/ssp/ad/e/a0/d$c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/d$c;->b(J)V

    :cond_1
    return-void
.end method
