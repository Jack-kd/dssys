.class Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->access$000(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->access$200(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->access$100(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-wide/16 v2, 0x1f4

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->access$000(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVideoDuration()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->access$000(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVideoCurrentPosition()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-lez v0, :cond_0

    .line 47
    .line 48
    if-lez v1, :cond_0

    .line 49
    .line 50
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->access$300(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;->access$300(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeAdMediaListenerImpl;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    int-to-long v3, v1

    .line 65
    int-to-long v0, v0

    .line 66
    invoke-interface {v2, v3, v4, v0, v1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onProgressUpdate(JJ)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method
