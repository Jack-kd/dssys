.class public Lcom/meishu/sdk/core/loader/strategy/e$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/concurrent/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/loader/strategy/e$f;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/loader/d;

.field public final synthetic b:Lcom/meishu/sdk/core/loader/strategy/e$f;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/strategy/e$f;Lcom/meishu/sdk/core/loader/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e$f$a;->b:Lcom/meishu/sdk/core/loader/strategy/e$f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/strategy/e$f$a;->a:Lcom/meishu/sdk/core/loader/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/meishu/sdk/core/loader/AdPlatformError;I)V
    .locals 2

    .line 1
    const-string p2, "onAdError: "

    invoke-static {p2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PriceFirstStrategy"

    invoke-static {v0, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/strategy/e$f$a;->b:Lcom/meishu/sdk/core/loader/strategy/e$f;

    iget-object v0, p2, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e$f$a;->a:Lcom/meishu/sdk/core/loader/d;

    .line 3
    iget-object p2, p2, Lcom/meishu/sdk/core/loader/strategy/e$f;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 4
    invoke-static {v0, v1, p2, p1}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/loadbean/a;Lcom/meishu/sdk/core/loader/AdPlatformError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 1

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e$f$a;->b:Lcom/meishu/sdk/core/loader/strategy/e$f;

    iget-object p2, p1, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 7
    iget-object p1, p1, Lcom/meishu/sdk/core/loader/strategy/e$f;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 8
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v0, p2, Lcom/meishu/sdk/core/loader/strategy/e;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/strategy/e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p2

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRenderFail :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PriceFirstStrategy"

    invoke-static {v0, p3}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :try_start_0
    iget-object p3, p0, Lcom/meishu/sdk/core/loader/strategy/e$f$a;->b:Lcom/meishu/sdk/core/loader/strategy/e$f;

    iget-object v0, p3, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e$f$a;->a:Lcom/meishu/sdk/core/loader/d;

    .line 14
    iget-object p3, p3, Lcom/meishu/sdk/core/loader/strategy/e$f;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 15
    invoke-static {v0, v1, p3, p2, p1}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/loadbean/a;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/core/loader/strategy/e$f$a;->b:Lcom/meishu/sdk/core/loader/strategy/e$f;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/strategy/e$f$a;->a:Lcom/meishu/sdk/core/loader/d;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/meishu/sdk/core/loader/strategy/e$f;->a:Lcom/meishu/sdk/core/loader/loadbean/a;

    .line 8
    .line 9
    invoke-static {v0, v1, p2, p1}, Lcom/meishu/sdk/core/loader/strategy/e;->a(Lcom/meishu/sdk/core/loader/strategy/e;Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/loadbean/a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onAdExposure()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e$f$a;->b:Lcom/meishu/sdk/core/loader/strategy/e$f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/strategy/e$f;->b:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/strategy/e;->k:Lcom/meishu/sdk/core/loader/concurrent/g;

    .line 6
    .line 7
    return-void
.end method
