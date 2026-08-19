.class Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd$IAdShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->onAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onShow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$402(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Z)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$500(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3$1$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3$1$1;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3$1;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v2, 0x320

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
