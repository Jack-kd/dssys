.class public Lcom/meishu/sdk/meishu_ad/splash/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/splash/l$a;,
        Lcom/meishu/sdk/meishu_ad/splash/l$b;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer;

.field public b:Lcom/meishu/sdk/core/webview/s;

.field public c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

.field public d:Landroid/app/Activity;

.field public e:Lcom/meishu/sdk/core/service/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic a(Lcom/meishu/sdk/meishu_ad/splash/l$a;ZI)V
    .locals 0

    if-nez p2, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/splash/l;->a()V

    :cond_0
    if-eqz p1, :cond_1

    .line 17
    invoke-interface {p1, p2}, Lcom/meishu/sdk/meishu_ad/splash/l$a;->a(Z)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/splash/l;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance p0, Lcom/meishu/sdk/core/bquery/i;

    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 4
    sget p1, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 6
    sget p1, Lcom/meishu/sdk/R$id;->ms_download_layer_textview:I

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 7
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 8
    sget p1, Lcom/meishu/sdk/R$id;->ms_shakeRoot:I

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p0

    check-cast p0, Lcom/meishu/sdk/core/bquery/i;

    .line 9
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/splash/l;Lcom/meishu/sdk/meishu_ad/splash/l$a;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/meishu/sdk/meishu_ad/splash/l;->a(Lcom/meishu/sdk/meishu_ad/splash/l$a;ZI)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/l;->e:Lcom/meishu/sdk/core/service/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {v0}, Lcom/meishu/sdk/core/service/d;->b(Lcom/meishu/sdk/core/service/e;)V

    .line 20
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/l;->e:Lcom/meishu/sdk/core/service/e;

    .line 21
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/l;->d:Landroid/app/Activity;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/l;->b:Lcom/meishu/sdk/core/webview/s;

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->a:Landroid/webkit/WebView;

    .line 24
    invoke-static {v0}, Lcom/meishu/sdk/core/webview/q;->a(Landroid/webkit/WebView;)V

    .line 25
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/l;->b:Lcom/meishu/sdk/core/webview/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 26
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/meishu/sdk/meishu_ad/splash/l$a;)V
    .locals 3

    const/4 v0, 0x0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/l;->b:Lcom/meishu/sdk/core/webview/s;

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, v1, Lcom/meishu/sdk/core/webview/s;->d:Lcom/meishu/sdk/core/webview/b;

    if-nez v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, LS0/b;

    invoke-direct {v2, p0, p1}, LS0/b;-><init>(Lcom/meishu/sdk/meishu_ad/splash/l;Lcom/meishu/sdk/meishu_ad/splash/l$a;)V

    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/webview/b;->a(Lcom/meishu/sdk/core/webview/b$b;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1, v0}, Lcom/meishu/sdk/meishu_ad/splash/l$a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 14
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_2

    .line 15
    invoke-interface {p1, v0}, Lcom/meishu/sdk/meishu_ad/splash/l$a;->a(Z)V

    :cond_2
    return-void
.end method
