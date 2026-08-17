.class public Lcom/meishu/sdk/meishu_ad/x;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/x;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/x;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/x;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/x;->c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/x;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 2
    .line 3
    check-cast p1, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 4
    .line 5
    iget-boolean p1, p1, Lcom/meishu/sdk/platform/ms/splash/g;->e:Z

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/x;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/x;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/x;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/x;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    check-cast p1, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 45
    .line 46
    iput-boolean v0, p1, Lcom/meishu/sdk/platform/ms/splash/g;->h:Z

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/x;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/x;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/x;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/x;->c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void

    .line 69
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
