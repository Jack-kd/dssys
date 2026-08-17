.class Lcom/ubix/ssp/ad/a$k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->m(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iput p2, p0, Lcom/ubix/ssp/ad/a$k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iget v1, p0, Lcom/ubix/ssp/ad/a$k;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EVENT_AD_TYPE"

    invoke-virtual {v0, v2, v1}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->a(Ljava/util/HashMap;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/a;->b(Ljava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/x/b;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/x/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iget-object v2, v1, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    iget-object v3, v1, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget v4, p0, Lcom/ubix/ssp/ad/a$k;->a:I

    invoke-virtual {v1, v3, v2, v4}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ubix/ssp/ad/e/y/a/d;

    move-result-object v1

    iget-object v3, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    invoke-virtual {v0, v2, v1, v3}, Lcom/ubix/ssp/ad/e/x/b;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/d;Lcom/ubix/ssp/ad/e/x/a$e;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->h(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iget-object v3, v3, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ubix_sp_gold"

    invoke-static {v1, v3, v2}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/a;J)J

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dc"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ubix/ssp/ad/a$k;->b:Lcom/ubix/ssp/ad/a;

    iget-object v4, v4, Lcom/ubix/ssp/ad/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ubix/ssp/ad/a;->B:J

    return-void
.end method
