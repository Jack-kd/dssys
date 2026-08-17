.class public Lcom/meishu/sdk/meishu_ad/b;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/b;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/b;->b:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/b;->c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

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
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/b;->b:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    check-cast p1, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 34
    .line 35
    iput-boolean v0, p1, Lcom/meishu/sdk/platform/ms/splash/g;->h:Z

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/b;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/b;->c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
