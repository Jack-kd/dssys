.class Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->handle(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;Lcom/fl/saas/adx/api/mixNative/NativeAd;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$000(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)Lcom/fl/saas/k0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/fl/saas/adx/base/bidding/C2SBiddingECPM;->getC2SBiddingECPM([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method


# virtual methods
.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$400(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$000(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)Lcom/fl/saas/k0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fl/saas/k0;->getAdSource()Lcom/fl/saas/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/n;->setAdSource(Lcom/fl/saas/j;)Lcom/fl/saas/n;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/d;

    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/base/inner/spread/d;-><init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$100(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/b1;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$202(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/api/mixNative/NativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$300(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method
