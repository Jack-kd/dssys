.class public Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/core/ad/image/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 5
    .line 6
    new-instance v0, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;

    .line 7
    .line 8
    invoke-direct {v0, p4}, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;-><init>(Lcom/meishu/sdk/core/ad/image/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, p1, p3, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public loadData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
