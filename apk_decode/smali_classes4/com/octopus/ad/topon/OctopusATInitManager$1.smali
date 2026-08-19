.class Lcom/octopus/ad/topon/OctopusATInitManager$1;
.super Lcom/octopus/ad/OctopusAdSdkController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/octopus/ad/topon/OctopusATInitManager;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATInitManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATInitManager$1;->this$0:Lcom/octopus/ad/topon/OctopusATInitManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/octopus/ad/OctopusAdSdkController;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/octopus/ad/OctopusAdSdkController;->getImei()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/octopus/ad/OctopusAdSdkController;->getOaid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isCanUsePhoneState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
