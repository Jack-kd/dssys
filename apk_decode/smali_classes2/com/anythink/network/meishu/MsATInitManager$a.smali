.class Lcom/anythink/network/meishu/MsATInitManager$a;
.super Lcom/meishu/sdk/core/MSAdConfig$CustomController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/meishu/MsATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/meishu/MsATInitManager;


# direct methods
.method public constructor <init>(Lcom/anythink/network/meishu/MsATInitManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATInitManager$a;->a:Lcom/anythink/network/meishu/MsATInitManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getOaid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/anythink/core/api/ATDeviceUtils;->getOaid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
