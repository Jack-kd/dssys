.class public Lcom/meishu/sdk/meishu_ad/a$a;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/a;->onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/banner/c;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/a;Lcom/meishu/sdk/platform/ms/banner/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$a;->b:Lcom/meishu/sdk/meishu_ad/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/c;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$a;->b:Lcom/meishu/sdk/meishu_ad/a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/a;->c:Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$a;->b:Lcom/meishu/sdk/meishu_ad/a;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/a;->c:Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a$a;->b:Lcom/meishu/sdk/meishu_ad/a;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/a;->c:Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$a;->b:Lcom/meishu/sdk/meishu_ad/a;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/a;->a:Lcom/meishu/sdk/meishu_ad/banner/b;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    check-cast p1, Lcom/meishu/sdk/platform/ms/banner/a;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/banner/a;->a:Lcom/meishu/sdk/core/ad/banner/b;

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/c;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a$a;->a:Lcom/meishu/sdk/platform/ms/banner/c;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method
