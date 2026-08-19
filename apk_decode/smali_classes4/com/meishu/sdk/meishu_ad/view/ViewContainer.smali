.class public Lcom/meishu/sdk/meishu_ad/view/ViewContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/view/ViewContainer$a;
    }
.end annotation


# instance fields
.field public a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer$a;

.field public b:Ljava/lang/Boolean;


# direct methods
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


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/ViewContainer;->b:Ljava/lang/Boolean;

    .line 7
    .line 8
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/ViewContainer;->b:Ljava/lang/Boolean;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/ViewContainer;->a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer$a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/meishu/sdk/meishu_ad/splash/k;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/k;->a:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/splash/l;->a()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setWindowEventListener(Lcom/meishu/sdk/meishu_ad/view/ViewContainer$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/ViewContainer;->a:Lcom/meishu/sdk/meishu_ad/view/ViewContainer$a;

    .line 2
    .line 3
    return-void
.end method
