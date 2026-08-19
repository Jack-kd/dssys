.class public Lcom/meishu/sdk/core/utils/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static a([Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 12
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 14
    sget-object v0, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 15
    new-instance v1, Lcom/meishu/sdk/core/utils/t$a;

    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/utils/t$a;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static a([Ljava/lang/String;Lcom/meishu/sdk/core/loader/d;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/meishu/sdk/platform/ms/splash/a;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    check-cast p1, Lcom/meishu/sdk/platform/ms/splash/a;

    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->getResLoadSuccess()Lcom/meishu/sdk/core/utils/b;

    move-result-object p1

    .line 5
    iget-boolean v0, p1, Lcom/meishu/sdk/core/utils/b;->b:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/t;->a([Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/meishu/sdk/core/utils/B;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/utils/B;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/b;->a(Lcom/meishu/sdk/core/utils/b$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/t;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a([Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/t;->a([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
