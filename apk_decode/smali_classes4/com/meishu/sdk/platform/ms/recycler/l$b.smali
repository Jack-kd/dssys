.class public Lcom/meishu/sdk/platform/ms/recycler/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/l;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/l;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$b;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$b;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 6
    .line 7
    iget v1, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->f:I

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$b;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 6
    .line 7
    iget v1, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->f:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IZ)V

    .line 11
    .line 12
    .line 13
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$b;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 8
    .line 9
    iget v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->f:I

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$b;->a:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 21
    .line 22
    iget v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->f:I

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
