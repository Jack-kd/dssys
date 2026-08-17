.class public Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;",
        "Lcom/meishu/sdk/core/ad/paster/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BDPasterAdLoader"


# instance fields
.field private listener:Lcom/baidu/mobads/sdk/api/PatchVideoNative$IPatchVideoNativeListener;

.field private patchVideoNative:Lcom/baidu/mobads/sdk/api/PatchVideoNative;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;-><init>(Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;->listener:Lcom/baidu/mobads/sdk/api/PatchVideoNative$IPatchVideoNativeListener;

    .line 10
    .line 11
    new-instance p1, Lcom/baidu/mobads/sdk/api/PatchVideoNative;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;->listener:Lcom/baidu/mobads/sdk/api/PatchVideoNative$IPatchVideoNativeListener;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {p1, v0, v1, v3, v2}, Lcom/baidu/mobads/sdk/api/PatchVideoNative;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;Lcom/baidu/mobads/sdk/api/PatchVideoNative$IPatchVideoNativeListener;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;->patchVideoNative:Lcom/baidu/mobads/sdk/api/PatchVideoNative;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/PatchVideoNative;->setAppSid(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->destroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public loadAd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->downloadAppConfirmPolicy(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;->patchVideoNative:Lcom/baidu/mobads/sdk/api/PatchVideoNative;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/api/PatchVideoNative;->requestAd(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
