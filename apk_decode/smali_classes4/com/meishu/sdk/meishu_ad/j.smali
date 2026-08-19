.class public Lcom/meishu/sdk/meishu_ad/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/j;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/j;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/j;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/j;->c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onSwipe()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/meishu/sdk/platform/ms/splash/g;->e:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    check-cast v0, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 35
    .line 36
    iput-boolean v1, v0, Lcom/meishu/sdk/platform/ms/splash/g;->h:Z

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 41
    .line 42
    const/16 v2, 0x80

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/j;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/j;->c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
