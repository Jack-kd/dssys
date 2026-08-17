.class public Lcom/ad/adapter/AdSplashAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad/adapter/AdSplashAdapter;->show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Lcom/ad/adapter/AdSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/ad/adapter/AdSplashAdapter;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/adapter/AdSplashAdapter$c;->c:Lcom/ad/adapter/AdSplashAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ad/adapter/AdSplashAdapter$c;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ad/adapter/AdSplashAdapter$c;->c:Lcom/ad/adapter/AdSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ad/adapter/AdSplashAdapter;->e(Lcom/ad/adapter/AdSplashAdapter;)Lcom/windmill/sdk/splash/WMSplashAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ad/adapter/AdSplashAdapter$c;->b:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ad/adapter/AdSplashAdapter$c;->c:Lcom/ad/adapter/AdSplashAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/ad/adapter/AdSplashAdapter;->e(Lcom/ad/adapter/AdSplashAdapter;)Lcom/windmill/sdk/splash/WMSplashAd;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/windmill/sdk/splash/WMSplashAd;->isReady()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/ad/adapter/AdSplashAdapter$c;->c:Lcom/ad/adapter/AdSplashAdapter;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/ad/adapter/AdSplashAdapter;->e(Lcom/ad/adapter/AdSplashAdapter;)Lcom/windmill/sdk/splash/WMSplashAd;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/ad/adapter/AdSplashAdapter$c;->b:Landroid/view/ViewGroup;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/splash/WMSplashAd;->showAd(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    iget-object v0, p0, Lcom/ad/adapter/AdSplashAdapter$c;->c:Lcom/ad/adapter/AdSplashAdapter;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/ad/adapter/AdSplashAdapter;->a(Lcom/ad/adapter/AdSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/ad/adapter/AdSplashAdapter$c;->c:Lcom/ad/adapter/AdSplashAdapter;

    .line 46
    .line 47
    const/16 v1, 0x63

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/ad/adapter/AdSplashAdapter;->b(Lcom/ad/adapter/AdSplashAdapter;I)I

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/ad/adapter/AdSplashAdapter$c;->c:Lcom/ad/adapter/AdSplashAdapter;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/ad/adapter/AdSplashAdapter;->c(Lcom/ad/adapter/AdSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, ""

    .line 59
    .line 60
    const-string v2, "GDT Splash show with exception"

    .line 61
    .line 62
    const-string v3, "4006"

    .line 63
    .line 64
    invoke-static {v3, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/ad/adapter/AdSplashAdapter$c;->c:Lcom/ad/adapter/AdSplashAdapter;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/ad/adapter/AdSplashAdapter;->d(Lcom/ad/adapter/AdSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method
