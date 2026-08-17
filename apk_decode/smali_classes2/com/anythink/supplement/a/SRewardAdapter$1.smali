.class Lcom/anythink/supplement/a/SRewardAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/supplement/a/SRewardAdapter;->startLoad(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/supplement/a/SRewardAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/anythink/supplement/a/SRewardAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/supplement/a/SRewardAdapter$1;->val$context:Landroid/content/Context;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 2
    .line 3
    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/anythink/supplement/a/SRewardAdapter$1;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 8
    .line 9
    invoke-static {v3}, Lcom/anythink/supplement/a/SRewardAdapter;->access$000(Lcom/anythink/supplement/a/SRewardAdapter;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-direct {v1, v2, v3}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/anythink/supplement/a/SRewardAdapter;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/anythink/supplement/a/SRewardAdapter;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 21
    .line 22
    new-instance v1, Lcom/anythink/supplement/a/SRewardAdapter$1$1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/anythink/supplement/a/SRewardAdapter$1$1;-><init>(Lcom/anythink/supplement/a/SRewardAdapter$1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/anythink/supplement/a/SRewardAdapter;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
