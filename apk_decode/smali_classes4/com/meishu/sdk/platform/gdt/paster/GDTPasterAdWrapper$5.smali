.class Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "send onADClicked"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$300(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 63
    .line 64
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$300(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$300(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void

    .line 99
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public onADError(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onADExposed()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void

    .line 24
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onADStatusChanged()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$400(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Landroid/widget/Button;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$500(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;Landroid/widget/Button;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
