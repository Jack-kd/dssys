.class public Lcom/meishu/sdk/meishu_ad/g;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

.field public final synthetic b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/g;->a:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/g;->b:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/g;->a:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/g;->b:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 14
    .line 15
    int-to-double v2, v0

    .line 16
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    mul-double/2addr v2, v4

    .line 22
    double-to-int v0, v2

    .line 23
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/g;->b:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
