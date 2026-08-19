.class public Lcom/meishu/sdk/meishu_ad/v$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Z)Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

.field public final synthetic g:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;ZLcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$a;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/v$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/v$a;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/v$a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/v$a;->d:Landroid/view/View;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/meishu/sdk/meishu_ad/v$a;->e:Z

    .line 12
    .line 13
    iput-object p7, p0, Lcom/meishu/sdk/meishu_ad/v$a;->f:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 2
    .line 3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->getSplashShowTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    long-to-int v1, v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->setTotalTime(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$a;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/splash/c;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getIsHideSkipBtn()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    xor-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->setShow(Z)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/meishu/sdk/meishu_ad/v$a$a;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/v$a$a;-><init>(Lcom/meishu/sdk/meishu_ad/v$a;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->setOnSkipListener(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$a;->d:Landroid/view/View;

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    new-instance v2, Lcom/meishu/sdk/meishu_ad/v$a$b;

    .line 56
    .line 57
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/meishu_ad/v$a$b;-><init>(Lcom/meishu/sdk/meishu_ad/v$a;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->setShow(Z)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/v$a;->e:Z

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$a;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v$a;->f:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v$a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 80
    .line 81
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 82
    .line 83
    invoke-static {v0, v1, v2, v3, v4}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method
