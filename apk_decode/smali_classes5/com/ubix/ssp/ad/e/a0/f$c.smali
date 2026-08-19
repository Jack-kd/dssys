.class Lcom/ubix/ssp/ad/e/a0/f$c;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/y/a/a$b;

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/d;

.field final synthetic c:Ljava/util/Timer;

.field final synthetic d:Lcom/ubix/ssp/ad/e/a0/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/f;Lcom/ubix/ssp/ad/e/y/a/a$b;Lcom/ubix/ssp/ad/e/a0/d;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$c;->d:Lcom/ubix/ssp/ad/e/a0/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f$c;->a:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/a0/f$c;->b:Lcom/ubix/ssp/ad/e/a0/d;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/a0/f$c;->c:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$c;->d:Lcom/ubix/ssp/ad/e/a0/f;

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/a0/f;->j:Z

    if-nez v0, :cond_0

    const-string v0, "new deeplink \u76ee\u6807app\u5df2\u5b89\u88c5 "

    const-string v1, "\u4f46\u662f\u8c03\u8d77\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/f$c;->a:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/f$c;->d:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/f;->b(Lcom/ubix/ssp/ad/e/a0/f;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x194

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$c;->b:Lcom/ubix/ssp/ad/e/a0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/d;->c()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$c;->b:Lcom/ubix/ssp/ad/e/a0/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d$d;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/f;->a(Z)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$c;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
