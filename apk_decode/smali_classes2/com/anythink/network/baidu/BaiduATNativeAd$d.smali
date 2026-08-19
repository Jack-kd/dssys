.class Lcom/anythink/network/baidu/BaiduATNativeAd$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdShakeViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATNativeAd;->getShakeView(IILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATShakeViewListener;

.field final synthetic b:Lcom/anythink/network/baidu/BaiduATNativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATNativeAd;Lcom/anythink/core/api/ATShakeViewListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$d;->b:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$d;->a:Lcom/anythink/core/api/ATShakeViewListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$d;->a:Lcom/anythink/core/api/ATShakeViewListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/anythink/core/api/ATShakeViewListener;->onDismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
