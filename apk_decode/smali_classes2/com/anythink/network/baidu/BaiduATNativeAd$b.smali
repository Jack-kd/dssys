.class Lcom/anythink/network/baidu/BaiduATNativeAd$b;
.super Lcom/anythink/network/baidu/impression/BDImpressionController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATNativeAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/anythink/network/baidu/BaiduATNativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$b;->g:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/anythink/network/baidu/impression/BDImpressionController;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public recordImpression(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$b;->g:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->recordImpression(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :catchall_0
    :cond_0
    return-void
.end method
