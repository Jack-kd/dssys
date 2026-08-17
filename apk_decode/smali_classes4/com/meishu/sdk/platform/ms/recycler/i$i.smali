.class public Lcom/meishu/sdk/platform/ms/recycler/i$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$i;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$i;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 6
    .line 7
    iget v1, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$i;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 6
    .line 7
    iget v1, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IZ)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$i;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->q:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$i;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->y:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$i;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 8
    .line 9
    iget v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IZ)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$i;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 21
    .line 22
    iget v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IZ)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
