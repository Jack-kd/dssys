.class public Lcom/meishu/sdk/meishu_ad/splash/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/service/e;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/w;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/service/e;Lcom/meishu/sdk/core/utils/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/g;->a:Lcom/meishu/sdk/core/service/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/splash/g;->b:Lcom/meishu/sdk/core/utils/w;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "SPM"

    .line 2
    .line 3
    const-string v0, "adRoot detached"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/g;->a:Lcom/meishu/sdk/core/service/e;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/meishu/sdk/core/service/d;->b(Lcom/meishu/sdk/core/service/e;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/g;->b:Lcom/meishu/sdk/core/utils/w;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-boolean v0, p1, Lcom/meishu/sdk/core/utils/w;->e:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/w;->b:Lcom/meishu/sdk/core/utils/w$b;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void

    .line 35
    :goto_0
    const-string v0, "HW"

    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
