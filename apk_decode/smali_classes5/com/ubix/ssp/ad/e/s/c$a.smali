.class Lcom/ubix/ssp/ad/e/s/c$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/s/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ubix/ssp/ad/e/s/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/s/c;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/s/c$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/s/c;->b(Lcom/ubix/ssp/ad/e/s/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/s/c$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(Landroid/content/Context;ILcom/ubix/ssp/ad/e/s/g/a;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/ubix/ssp/ad/e/s/f;->a(Landroid/content/Context;ILcom/ubix/ssp/ad/e/s/g/a;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/e/s/g/a;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/s/f;->a(Landroid/app/Notification$Builder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/e/s/g/a;Ljava/lang/String;)V
    .locals 1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result p1

    invoke-static {v0, p2, p1}, Lcom/ubix/ssp/ad/e/s/f;->a(Landroid/app/Notification$Builder;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Ljava/lang/String;IILcom/ubix/ssp/open/AdError;)V

    return-void
.end method

.method private a(Ljava/lang/String;IIILcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
    .locals 9

    .line 5
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/c$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/s/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    const-string v1, "ACTION_LOADING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_6

    invoke-interface {v0, p2, p4}, Lcom/ubix/ssp/ad/e/s/e;->c(II)V

    goto :goto_1

    :cond_0
    const-string v1, "ACTION_COMPLETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_6

    invoke-interface {v0, p2, p6}, Lcom/ubix/ssp/ad/e/s/e;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "ACTION_PREPARE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_2
    const-string v1, "ACTION_FAIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_6

    invoke-interface {v0, p2, p5, p6}, Lcom/ubix/ssp/ad/e/s/e;->a(ILcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "ACTION_PAUSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_6

    invoke-interface {v0, p2, p4}, Lcom/ubix/ssp/ad/e/s/e;->a(II)V

    goto :goto_1

    :cond_4
    const-string v1, "ACTION_RESUME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_6

    invoke-interface {v0, p2, p4}, Lcom/ubix/ssp/ad/e/s/e;->b(II)V

    goto :goto_1

    :cond_5
    const-string v1, "ACTION_DUPLICATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    :goto_0
    invoke-interface {v0, p2}, Lcom/ubix/ssp/ad/e/s/e;->a(I)V

    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/ubix/ssp/ad/e/s/c$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/s/c$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    :cond_7
    :goto_2
    if-ge v0, p3, :cond_8

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Ljava/lang/String;IIILcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method private a(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7

    .line 6
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Ljava/lang/String;IIILcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;IILcom/ubix/ssp/open/AdError;)V
    .locals 7

    .line 7
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Ljava/lang/String;IIILcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/ubix/ssp/ad/e/s/g/a;)I
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/b;->g()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/b;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/b;->g()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v0, v1

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/s/g/a;->a(I)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->e()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lcom/ubix/ssp/ad/e/s/g/a;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/s/f;->b(Landroid/app/Notification$Builder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private d(Lcom/ubix/ssp/ad/e/s/g/a;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/s/f;->a(Lcom/ubix/ssp/ad/e/s/g/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private e(Lcom/ubix/ssp/ad/e/s/g/a;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/s/c$a;->b(Lcom/ubix/ssp/ad/e/s/g/a;)I

    move-result v0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->c()Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v1

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/s/j/a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result p1

    invoke-static {v1, p1, v0}, Lcom/ubix/ssp/ad/e/s/f;->a(Landroid/app/Notification$Builder;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object v3, p0

    goto/16 :goto_3

    :cond_1
    const-string v1, "service_intent_notify_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v3, "service_intent_unique_id"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/ubix/ssp/ad/e/s/d;->c(I)Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTION_PREPARE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, p0

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTION_LOADING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v10}, Lcom/ubix/ssp/ad/e/s/c$a;->e(Lcom/ubix/ssp/ad/e/s/g/a;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10}, Lcom/ubix/ssp/ad/e/s/c$a;->b(Lcom/ubix/ssp/ad/e/s/g/a;)I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    return-void

    :cond_3
    move-object v3, p0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ACTION_PAUSE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v10}, Lcom/ubix/ssp/ad/e/s/c$a;->c(Lcom/ubix/ssp/ad/e/s/g/a;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10}, Lcom/ubix/ssp/ad/e/s/c$a;->b(Lcom/ubix/ssp/ad/e/s/g/a;)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTION_WAIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTION_COMPLETE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v10, :cond_0

    const/16 v7, 0x64

    const/4 v8, 0x0

    const-string v4, "ACTION_LOADING"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v10}, Lcom/ubix/ssp/ad/e/s/c$a;->b(Lcom/ubix/ssp/ad/e/s/g/a;)I

    move-result v7

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-direct {p0, v10}, Lcom/ubix/ssp/ad/e/s/c$a;->e(Lcom/ubix/ssp/ad/e/s/g/a;)V

    invoke-direct {p0, v0, v5, v10}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Landroid/content/Context;ILcom/ubix/ssp/ad/e/s/g/a;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p1

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v1

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v2

    invoke-interface {p1, v0, v1, v2, v5}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/b;II)V

    return-void

    :cond_6
    move-object v3, p0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ACTION_FAIL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v10, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/ubix/ssp/open/AdError;

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/b;->e()Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Ljava/lang/String;IIILcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0, v10}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Lcom/ubix/ssp/ad/e/s/g/a;)V

    invoke-direct {p0, v10}, Lcom/ubix/ssp/ad/e/s/c$a;->d(Lcom/ubix/ssp/ad/e/s/g/a;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ACTION_USER_OPERATION"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v10, :cond_12

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result p1

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_9

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p1

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v1

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v2

    invoke-interface {p1, v0, v1, v2, v5}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/b;II)V

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/s/f;->a(I)V

    return-void

    :cond_9
    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result p1

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_a

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p1

    invoke-interface {p1, v0, v5}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;I)V

    return-void

    :cond_a
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p1

    invoke-interface {p1, v0, v5}, Lcom/ubix/ssp/ad/e/s/d;->b(Landroid/content/Context;I)V

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ACTION_RESUME"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v10}, Lcom/ubix/ssp/ad/e/s/c$a;->b(Lcom/ubix/ssp/ad/e/s/g/a;)I

    move-result v7

    const-string v4, "ACTION_RESUME"

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ACTION_BIND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v10, :cond_f

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "service_intent_fellow_notify_ids"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_f

    if-ne p1, v6, :cond_f

    invoke-virtual {v10}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v1

    if-eq v1, v0, :cond_f

    iget-object v0, v3, Lcom/ubix/ssp/ad/e/s/c$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/s/e;

    if-eqz v0, :cond_d

    invoke-interface {v0, v5}, Lcom/ubix/ssp/ad/e/s/e;->a(I)V

    :cond_d
    iget-object v0, v3, Lcom/ubix/ssp/ad/e/s/c$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/ubix/ssp/ad/e/s/c$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_e
    iget-object v0, v3, Lcom/ubix/ssp/ad/e/s/c$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_1
    invoke-static {v5}, Lcom/ubix/ssp/ad/e/s/f;->a(I)V

    return-void

    :cond_10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_DUPLICATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5, v6}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Ljava/lang/String;II)V

    return-void

    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_NEW_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "filename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v10, p1}, Lcom/ubix/ssp/ad/e/s/c$a;->a(Lcom/ubix/ssp/ad/e/s/g/a;Ljava/lang/String;)V

    :cond_12
    :goto_3
    return-void
.end method
