.class public Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;
.super Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;
.source "SourceFile"


# instance fields
.field private ad:Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;-><init>(Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAdapter;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;->ad:Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;->ad:Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;->showSplashAd(Landroid/view/ViewGroup;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
