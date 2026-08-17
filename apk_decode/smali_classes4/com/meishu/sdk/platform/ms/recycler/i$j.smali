.class public Lcom/meishu/sdk/platform/ms/recycler/i$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;
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
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$j;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$j;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->q:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    aget v2, v1, v0

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    aget v1, v1, v3

    .line 18
    .line 19
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/recycler/i$j;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 20
    .line 21
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/recycler/i;->q:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/i$j;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 28
    .line 29
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/i;->q:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    add-int/2addr v4, v2

    .line 36
    if-lez v4, :cond_0

    .line 37
    .line 38
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/recycler/i$j;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 39
    .line 40
    iget v6, v4, Lcom/meishu/sdk/platform/ms/recycler/i;->r:I

    .line 41
    .line 42
    if-ge v2, v6, :cond_0

    .line 43
    .line 44
    add-int/2addr v5, v1

    .line 45
    if-lez v5, :cond_0

    .line 46
    .line 47
    iget v2, v4, Lcom/meishu/sdk/platform/ms/recycler/i;->s:I

    .line 48
    .line 49
    if-ge v1, v2, :cond_0

    .line 50
    .line 51
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$j;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 56
    .line 57
    iget v1, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 58
    .line 59
    invoke-virtual {v0, v1, v3}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IZ)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$j;->a:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 70
    .line 71
    iget v2, v2, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 72
    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void

    .line 77
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    return-void
.end method
