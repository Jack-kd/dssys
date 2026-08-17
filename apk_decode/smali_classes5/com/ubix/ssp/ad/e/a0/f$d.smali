.class Lcom/ubix/ssp/ad/e/a0/f$d;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/f;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/ubix/ssp/ad/e/y/a/a$b;

.field final synthetic c:Ljava/util/Timer;

.field final synthetic d:Lcom/ubix/ssp/ad/e/a0/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/f;[ILcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->d:Lcom/ubix/ssp/ad/e/a0/f;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->a:[I

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->b:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->c:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->C()Z

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->a:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/16 v4, 0x64

    const/16 v5, 0x193

    const/4 v6, 0x1

    if-le v3, v4, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->b:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->d:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/f;->b(Lcom/ubix/ssp/ad/e/a0/f;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    const-string v0, "deeplink \u76ee\u6807app\u5df2\u5b89\u88c5 "

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f46\u662f\u8c03\u8d77\u5931\u8d25"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->a:[I

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->b:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->d:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/f;->b(Lcom/ubix/ssp/ad/e/a0/f;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v3, 0x194

    invoke-virtual {v0, v1, v2, v3}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    :goto_0
    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/f;->a(Z)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    return-void

    :cond_2
    add-int/2addr v3, v6

    aput v3, v1, v2

    if-nez v0, :cond_6

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/f;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/f;->b(Z)Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/k;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->b:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->d:Lcom/ubix/ssp/ad/e/a0/f;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/f;->b(Lcom/ubix/ssp/ad/e/a0/f;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/ubix/ssp/ad/e/w/k;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;Ljava/util/HashMap;I)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/f$d;->c:Ljava/util/Timer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_4
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/f;->b()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/f;->b()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_5
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/f;->c()Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/f;->c()Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
