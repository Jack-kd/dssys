.class public Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->p(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/anythink/core/api/ATBiddingListener;

.field public final synthetic d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;Landroid/content/Context;Lcom/anythink/core/api/ATBiddingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->c:Lcom/anythink/core/api/ATBiddingListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Li/a;->a()Li/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->b:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->c(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Li/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->a(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/beizi/fusion/InterstitialAd;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 25
    .line 26
    new-instance v1, Lcom/beizi/fusion/InterstitialAd;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->b:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->h(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v4, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;

    .line 35
    .line 36
    invoke-direct {v4, p0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b$a;-><init>(Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;)V

    .line 37
    .line 38
    .line 39
    iget-object v5, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 40
    .line 41
    invoke-static {v5}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->g(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    int-to-long v5, v5

    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/beizi/fusion/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/InterstitialAdListener;JI)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->b(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;Lcom/beizi/fusion/InterstitialAd;)Lcom/beizi/fusion/InterstitialAd;

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->a(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/beizi/fusion/InterstitialAd;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/InterstitialAd;->setAdVersion(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$b;->d:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->a(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/beizi/fusion/InterstitialAd;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/beizi/fusion/InterstitialAd;->loadAd()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
