.class public Lcom/meishu/sdk/meishu_ad/o;
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
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/o;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/o;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/o;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/o;->c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

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
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/o;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    check-cast p1, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 6
    .line 7
    iget-boolean p1, p1, Lcom/meishu/sdk/platform/ms/splash/g;->e:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/o;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/o;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/o;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/o;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    check-cast p1, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 45
    .line 46
    iput-boolean v0, p1, Lcom/meishu/sdk/platform/ms/splash/g;->h:Z

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/o;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

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
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/o;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/o;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/o;->c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_0
    return-void
.end method
