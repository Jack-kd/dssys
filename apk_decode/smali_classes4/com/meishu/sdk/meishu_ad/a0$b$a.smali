.class public Lcom/meishu/sdk/meishu_ad/a0$b$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/a0$b;->onVideoCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/a0$b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/a0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/a0$b$a;->a:Lcom/meishu/sdk/meishu_ad/a0$b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0$b$a;->a:Lcom/meishu/sdk/meishu_ad/a0$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/a0$b;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0$b$a;->a:Lcom/meishu/sdk/meishu_ad/a0$b;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/a0$b;->b:Lcom/meishu/sdk/meishu_ad/a0;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    check-cast v1, Landroid/view/ViewGroup;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
