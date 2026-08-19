.class Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressDislikeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->onNativeLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

.field public final synthetic val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

.field public final synthetic val$response:Lcom/baidu/mobads/sdk/api/ExpressResponse;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;Lcom/baidu/mobads/sdk/api/ExpressResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->val$response:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onDislikeItemClick()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdClosed()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->val$response:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getExpressAdView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    .line 8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onDislikeItemClick(Ljava/lang/String;)V
    .locals 1

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdClosed()V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;->val$response:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getExpressAdView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    .line 16
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onDislikeWindowClose()V
    .locals 0

    return-void
.end method

.method public onDislikeWindowShow()V
    .locals 0

    return-void
.end method
