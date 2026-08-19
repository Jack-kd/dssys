.class public Lcom/ad/adapter/AdRewardAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad/adapter/AdRewardAdapter;->startLoadAd(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/ad/adapter/AdRewardAdapter;


# direct methods
.method public constructor <init>(Lcom/ad/adapter/AdRewardAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/adapter/AdRewardAdapter$b;->c:Lcom/ad/adapter/AdRewardAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ad/adapter/AdRewardAdapter$b;->b:Landroid/content/Context;

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
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ad/adapter/AdRewardAdapter$b;->c:Lcom/ad/adapter/AdRewardAdapter;

    .line 7
    .line 8
    new-instance v2, Lcom/windmill/sdk/reward/WMRewardAd;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/ad/adapter/AdRewardAdapter$b;->b:Landroid/content/Context;

    .line 11
    .line 12
    check-cast v3, Landroid/app/Activity;

    .line 13
    .line 14
    new-instance v4, Lcom/windmill/sdk/reward/WMRewardAdRequest;

    .line 15
    .line 16
    iget-object v5, p0, Lcom/ad/adapter/AdRewardAdapter$b;->c:Lcom/ad/adapter/AdRewardAdapter;

    .line 17
    .line 18
    invoke-static {v5}, Lcom/ad/adapter/AdRewardAdapter;->c(Lcom/ad/adapter/AdRewardAdapter;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-direct {v4, v5, v6, v0}, Lcom/windmill/sdk/reward/WMRewardAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3, v4}, Lcom/windmill/sdk/reward/WMRewardAd;-><init>(Landroid/app/Activity;Lcom/windmill/sdk/reward/WMRewardAdRequest;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/ad/adapter/AdRewardAdapter;->b(Lcom/ad/adapter/AdRewardAdapter;Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/reward/WMRewardAd;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/ad/adapter/AdRewardAdapter$b;->c:Lcom/ad/adapter/AdRewardAdapter;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/ad/adapter/AdRewardAdapter;->a(Lcom/ad/adapter/AdRewardAdapter;)Lcom/windmill/sdk/reward/WMRewardAd;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lcom/ad/adapter/AdRewardAdapter$b$a;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/ad/adapter/AdRewardAdapter$b$a;-><init>(Lcom/ad/adapter/AdRewardAdapter$b;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/reward/WMRewardAd;->setRewardedAdListener(Lcom/windmill/sdk/reward/WMRewardAdListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/ad/adapter/AdRewardAdapter$b;->c:Lcom/ad/adapter/AdRewardAdapter;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/ad/adapter/AdRewardAdapter;->a(Lcom/ad/adapter/AdRewardAdapter;)Lcom/windmill/sdk/reward/WMRewardAd;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/windmill/sdk/reward/WMRewardAd;->loadAd()Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
