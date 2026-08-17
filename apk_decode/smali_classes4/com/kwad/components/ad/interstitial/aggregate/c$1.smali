.class final Lcom/kwad/components/ad/interstitial/aggregate/c$1;
.super Lcom/kwad/components/core/webview/tachikoma/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/interstitial/aggregate/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic lX:Lcom/kwad/components/ad/interstitial/aggregate/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/interstitial/aggregate/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/c$1;->lX:Lcom/kwad/components/ad/interstitial/aggregate/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/webview/tachikoma/f/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final x(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "tk_interstitial"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/kwad/components/ad/interstitial/aggregate/b;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/c$1;->lX:Lcom/kwad/components/ad/interstitial/aggregate/c;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/aggregate/c;->a(Lcom/kwad/components/ad/interstitial/aggregate/c;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Lcom/kwad/components/ad/interstitial/aggregate/b;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/c$1;->lX:Lcom/kwad/components/ad/interstitial/aggregate/c;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/aggregate/c;->b(Lcom/kwad/components/ad/interstitial/aggregate/c;)Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/c$1;->lX:Lcom/kwad/components/ad/interstitial/aggregate/c;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/aggregate/c;->c(Lcom/kwad/components/ad/interstitial/aggregate/c;)Lcom/kwad/components/ad/interstitial/d;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/c$1;->lX:Lcom/kwad/components/ad/interstitial/aggregate/c;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/aggregate/c;->d(Lcom/kwad/components/ad/interstitial/aggregate/c;)Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/c$1;->lX:Lcom/kwad/components/ad/interstitial/aggregate/c;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/aggregate/c;->e(Lcom/kwad/components/ad/interstitial/aggregate/c;)Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/kwad/components/ad/interstitial/h/a;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/interstitial/d;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;IZ)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/c$1;->lX:Lcom/kwad/components/ad/interstitial/aggregate/c;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/aggregate/c;->f(Lcom/kwad/components/ad/interstitial/aggregate/c;)Landroid/view/ViewGroup;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/c$1;->lX:Lcom/kwad/components/ad/interstitial/aggregate/c;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/aggregate/c;->g(Lcom/kwad/components/ad/interstitial/aggregate/c;)Landroid/view/ViewGroup;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method
