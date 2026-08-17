.class Lcom/ubix/ssp/ad/a$o;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$o;->c:Lcom/ubix/ssp/ad/a;

    iput-wide p2, p0, Lcom/ubix/ssp/ad/a$o;->a:J

    iput-boolean p4, p0, Lcom/ubix/ssp/ad/a$o;->b:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainFrameHasError"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a$o;->c:Lcom/ubix/ssp/ad/a;

    iget-wide v4, p0, Lcom/ubix/ssp/ad/a$o;->a:J

    move-object v6, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V

    move-object v11, v6

    return-void

    :cond_0
    move-object v11, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainFrameDestroy"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v6, v11, Lcom/ubix/ssp/ad/a$o;->c:Lcom/ubix/ssp/ad/a;

    iget-wide v9, v11, Lcom/ubix/ssp/ad/a$o;->a:J

    invoke-virtual/range {v6 .. v11}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V

    return-void

    :cond_1
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebViewLoadFinished"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, v11, Lcom/ubix/ssp/ad/a$o;->b:Z

    const-string p2, "onlyFinish"

    invoke-virtual {v8, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, v11, Lcom/ubix/ssp/ad/a$o;->c:Lcom/ubix/ssp/ad/a;

    iget-wide v9, v11, Lcom/ubix/ssp/ad/a$o;->a:J

    invoke-virtual/range {v6 .. v11}, Lcom/ubix/ssp/ad/a;->c(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method
