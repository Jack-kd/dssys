.class Lcom/anythink/network/sigmob/SigmobATSplashAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/MediationInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
