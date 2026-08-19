.class Lcom/ubix/ssp/ad/e/w/c$a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/w/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/w/c$a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/w/c$a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/c$a$a;->a:Lcom/ubix/ssp/ad/e/w/c$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "----\u57cb\u70b9"

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/c$a$a;->a:Lcom/ubix/ssp/ad/e/w/c$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/w/c$a;->c:Lcom/ubix/ssp/ad/e/w/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/c;->a(Lcom/ubix/ssp/ad/e/w/c;)Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/core/monitor/data/c/b;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c$a$a;->a:Lcom/ubix/ssp/ad/e/w/c$a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/w/c$a;->c:Lcom/ubix/ssp/ad/e/w/c;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/w/c;->b(Lcom/ubix/ssp/ad/e/w/c;)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c$a$a;->a:Lcom/ubix/ssp/ad/e/w/c$a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/w/c$a;->c:Lcom/ubix/ssp/ad/e/w/c;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/w/c;->d(Lcom/ubix/ssp/ad/e/w/c;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c$a$a;->a:Lcom/ubix/ssp/ad/e/w/c$a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/w/c$a;->c:Lcom/ubix/ssp/ad/e/w/c;

    invoke-static {v1, p1}, Lcom/ubix/ssp/ad/e/w/c;->a(Lcom/ubix/ssp/ad/e/w/c;Landroid/os/Message;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/c$a$a;->a:Lcom/ubix/ssp/ad/e/w/c$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/w/c$a;->c:Lcom/ubix/ssp/ad/e/w/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/c;->d(Lcom/ubix/ssp/ad/e/w/c;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/c$a$a;->a:Lcom/ubix/ssp/ad/e/w/c$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/w/c$a;->c:Lcom/ubix/ssp/ad/e/w/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/c;->e(Lcom/ubix/ssp/ad/e/w/c;)[I

    move-result-object p1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c$a$a;->a:Lcom/ubix/ssp/ad/e/w/c$a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/w/c$a;->c:Lcom/ubix/ssp/ad/e/w/c;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/w/c;->c(Lcom/ubix/ssp/ad/e/w/c;)I

    move-result v1

    aget p1, p1, v1

    mul-int/lit16 p1, p1, 0x3e8

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c$a$a;->a:Lcom/ubix/ssp/ad/e/w/c$a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/w/c$a;->c:Lcom/ubix/ssp/ad/e/w/c;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/ubix/ssp/ad/e/w/c;->a(J)V

    return-void

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message received by SensorsData worker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/w/c$a$a;->a:Lcom/ubix/ssp/ad/e/w/c$a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/w/c$a;->c:Lcom/ubix/ssp/ad/e/w/c;

    invoke-static {v1, p1}, Lcom/ubix/ssp/ad/e/w/c;->a(Lcom/ubix/ssp/ad/e/w/c;Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :goto_1
    const-string v1, "Worker threw an unhandled exception"

    invoke-static {v0, v1, p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method
