.class Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$d;->b:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$d;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$d;->b:Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter;->a:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATInterstitialAdapter$d;->a:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->show(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
