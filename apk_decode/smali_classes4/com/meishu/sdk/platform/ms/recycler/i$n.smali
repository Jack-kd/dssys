.class public Lcom/meishu/sdk/platform/ms/recycler/i$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$n;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$n;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$n;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdExposure()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$n;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/recycler/i;->b(Lcom/meishu/sdk/platform/ms/recycler/i;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$n;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->p:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$n;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->b(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$n;->c:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$n;->a:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$n;->b:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v3, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 31
    .line 32
    iget-object v4, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    new-instance v5, Lcom/meishu/sdk/platform/ms/recycler/d;

    .line 35
    .line 36
    new-instance v6, Lcom/meishu/sdk/platform/ms/recycler/e;

    .line 37
    .line 38
    invoke-direct {v6, v0}, Lcom/meishu/sdk/platform/ms/recycler/e;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v5, v3, v6}, Lcom/meishu/sdk/platform/ms/recycler/d;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/b;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v3, v1, v4, v2, v5}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/platform/ms/recycler/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onAdRenderFailed()V
    .locals 0

    return-void
.end method
