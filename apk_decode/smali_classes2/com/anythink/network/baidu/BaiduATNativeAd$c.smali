.class Lcom/anythink/network/baidu/BaiduATNativeAd$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/XNativeView$INativeViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/baidu/BaiduATNativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$c;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNativeViewClick(Lcom/baidu/mobads/sdk/api/XNativeView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd$c;->a:Lcom/anythink/network/baidu/BaiduATNativeAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
