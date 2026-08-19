.class public Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATNativeExpressHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TTNativeExpressAdWrapper"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

.field public expressHeight:F

.field public expressWidth:F

.field public ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATNativeExpressHandler;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;->a:Lcom/anythink/network/toutiao/TTATNativeExpressHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 7
    .line 8
    iput p3, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;->expressWidth:F

    .line 9
    .line 10
    iput p4, p0, Lcom/anythink/network/toutiao/TTATNativeExpressHandler$TTNativeExpressAdWrapper;->expressHeight:F

    .line 11
    .line 12
    return-void
.end method
