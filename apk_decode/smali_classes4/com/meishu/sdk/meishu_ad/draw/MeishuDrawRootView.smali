.class public Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView$a;
    }
.end annotation


# instance fields
.field public a:Lcom/meishu/sdk/core/ad/draw/a;

.field public b:Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;->b:Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView$a;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    check-cast p1, Lcom/meishu/sdk/platform/ms/draw/b;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/b;->a:Landroid/view/View;

    .line 11
    .line 12
    instance-of v0, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->resume()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->pause()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;->a:Lcom/meishu/sdk/core/ad/draw/a;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public setAdListener(Lcom/meishu/sdk/core/ad/draw/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;->a:Lcom/meishu/sdk/core/ad/draw/a;

    .line 2
    .line 3
    return-void
.end method

.method public setOnVisibilityChangeListener(Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;->b:Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView$a;

    .line 2
    .line 3
    return-void
.end method
