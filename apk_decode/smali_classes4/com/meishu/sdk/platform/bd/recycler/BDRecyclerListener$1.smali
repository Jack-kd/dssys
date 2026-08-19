.class Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdDislikeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->onNativeLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

.field public final synthetic val$newAdView:Lcom/baidu/mobads/sdk/api/FeedNativeView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;Lcom/baidu/mobads/sdk/api/FeedNativeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;->val$newAdView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDislikeItemClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdClosed()V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;->val$newAdView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;->val$newAdView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/view/ViewGroup;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;->val$newAdView:Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void

    .line 78
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
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
