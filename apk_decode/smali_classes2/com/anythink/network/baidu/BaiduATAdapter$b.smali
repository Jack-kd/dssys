.class Lcom/anythink/network/baidu/BaiduATAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/baidu/BaiduATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATAdapter;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$b;->b:Lcom/anythink/network/baidu/BaiduATAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATAdapter$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$b;->b:Lcom/anythink/network/baidu/BaiduATAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSuccess(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$b;->b:Lcom/anythink/network/baidu/BaiduATAdapter;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$b;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p1, v0, v1, p2}, Lcom/anythink/network/baidu/BaiduATAdapter;->a(Lcom/anythink/network/baidu/BaiduATAdapter;Ljava/util/List;Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
