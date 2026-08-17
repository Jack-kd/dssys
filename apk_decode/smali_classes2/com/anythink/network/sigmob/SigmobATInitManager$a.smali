.class Lcom/anythink/network/sigmob/SigmobATInitManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/OnInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATInitManager;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATInitManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInitManager$a;->a:Lcom/anythink/network/sigmob/SigmobATInitManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInitializationFail(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/anythink/network/sigmob/SigmobATInitManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onInitializationSuccess()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/anythink/network/sigmob/SigmobATInitManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-void
.end method
