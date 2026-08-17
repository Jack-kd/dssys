.class Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressDislikeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDislikeItemClick(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDislikeWindowClose()V
    .locals 0

    return-void
.end method

.method public onDislikeWindowShow()V
    .locals 0

    return-void
.end method
