.class public Lcom/meishu/sdk/core/utils/PackageBean$AdBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/utils/PackageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdBean"
.end annotation


# instance fields
.field private crdpf:I

.field private feed:Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;

.field private reward:Lcom/meishu/sdk/core/utils/PackageBean$RewardConfigBean;

.field private splash:Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getCrdpf()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->crdpf:I

    .line 2
    .line 3
    return v0
.end method

.method public getFeed()Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->feed:Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReward()Lcom/meishu/sdk/core/utils/PackageBean$RewardConfigBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->reward:Lcom/meishu/sdk/core/utils/PackageBean$RewardConfigBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->splash:Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setSplash(Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->splash:Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    .line 2
    .line 3
    return-void
.end method
