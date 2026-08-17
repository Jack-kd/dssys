.class public Lcom/ad/adapter/AdInterstitialAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad/adapter/AdInterstitialAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/ad/adapter/AdInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/ad/adapter/AdInterstitialAdapter;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/adapter/AdInterstitialAdapter$c;->c:Lcom/ad/adapter/AdInterstitialAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ad/adapter/AdInterstitialAdapter$c;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ad/adapter/AdInterstitialAdapter$c;->c:Lcom/ad/adapter/AdInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ad/adapter/AdInterstitialAdapter;->a(Lcom/ad/adapter/AdInterstitialAdapter;)Lcom/windmill/sdk/interstitial/WMInterstitialAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ad/adapter/AdInterstitialAdapter$c;->c:Lcom/ad/adapter/AdInterstitialAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ad/adapter/AdInterstitialAdapter;->a(Lcom/ad/adapter/AdInterstitialAdapter;)Lcom/windmill/sdk/interstitial/WMInterstitialAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->isReady()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/ad/adapter/AdInterstitialAdapter$c;->c:Lcom/ad/adapter/AdInterstitialAdapter;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/ad/adapter/AdInterstitialAdapter;->a(Lcom/ad/adapter/AdInterstitialAdapter;)Lcom/windmill/sdk/interstitial/WMInterstitialAd;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/ad/adapter/AdInterstitialAdapter$c;->b:Landroid/app/Activity;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/interstitial/WMInterstitialAd;->show(Landroid/app/Activity;Ljava/util/HashMap;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
