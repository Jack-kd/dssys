.class public Lcom/ad/main/bz/BeiZiATInterstitialAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$a;->c:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$a;->b:Landroid/app/Activity;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$a;->c:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->a(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/beizi/fusion/InterstitialAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$a;->c:Lcom/ad/main/bz/BeiZiATInterstitialAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATInterstitialAdapter;->a(Lcom/ad/main/bz/BeiZiATInterstitialAdapter;)Lcom/beizi/fusion/InterstitialAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/ad/main/bz/BeiZiATInterstitialAdapter$a;->b:Landroid/app/Activity;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/InterstitialAd;->showAd(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
