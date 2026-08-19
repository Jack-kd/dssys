.class Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/ads/instreamad/InstreamView$OnInstreamAdClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->initAd(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const-string v0, "HWPasterAdWrapper"

    .line 34
    .line 35
    const-string v1, "send onADClicked"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 92
    .line 93
    .line 94
    :cond_0
    return-void
.end method
