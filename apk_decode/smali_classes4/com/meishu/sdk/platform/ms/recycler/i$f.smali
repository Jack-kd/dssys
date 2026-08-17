.class public Lcom/meishu/sdk/platform/ms/recycler/i$f;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/widget/TextView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$f;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$f;->a:Landroid/view/View;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$f;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$f;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$f;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdClosed()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$f;->a:Landroid/view/View;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$f;->a:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    instance-of p1, p1, Landroid/view/ViewGroup;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$f;->a:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/view/ViewGroup;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$f;->a:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$f;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 71
    .line 72
    iget v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(I)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
