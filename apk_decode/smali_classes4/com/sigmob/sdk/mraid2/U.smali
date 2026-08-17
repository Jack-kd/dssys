.class public final synthetic Lcom/sigmob/sdk/mraid2/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field public final synthetic b:Lcom/sigmob/sdk/base/models/ClickCommon;

.field public final synthetic c:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/ClickCommon;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/U;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid2/U;->b:Lcom/sigmob/sdk/base/models/ClickCommon;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid2/U;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/U;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/U;->b:Lcom/sigmob/sdk/base/models/ClickCommon;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/U;->c:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, p1}, Lcom/sigmob/sdk/mraid2/s;->q(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/ClickCommon;Lorg/json/JSONObject;Ljava/lang/Object;)V

    return-void
.end method
