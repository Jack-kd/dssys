.class public Lcom/meishu/sdk/meishu_ad/splash/j;
.super Lcom/meishu/sdk/core/service/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/l;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/splash/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/j;->a:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/service/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/j;->a:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/splash/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/meishu_ad/splash/j;->a()V

    return-void
.end method


# virtual methods
.method public onActivityPause(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/j;->a:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->d:Landroid/app/Activity;

    .line 4
    .line 5
    if-ne p1, v1, :cond_1

    .line 6
    .line 7
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResume(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/j;->a:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->d:Landroid/app/Activity;

    .line 4
    .line 5
    if-ne p1, v1, :cond_1

    .line 6
    .line 7
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->b:Lcom/meishu/sdk/core/webview/s;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 17
    .line 18
    new-instance v0, LS0/a;

    .line 19
    .line 20
    invoke-direct {v0, p0}, LS0/a;-><init>(Lcom/meishu/sdk/meishu_ad/splash/j;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public onAppStateUpdate(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
