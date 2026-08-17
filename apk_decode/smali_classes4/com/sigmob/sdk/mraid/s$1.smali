.class Lcom/sigmob/sdk/mraid/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/s;-><init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/s;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid/s;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/s$1;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$1;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "fourElementsDidDisappear"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Error;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$1;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    const-string p2, "btn"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    const-string p2, "appinfo"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$1;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "fourElementsDidAppear"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V

    return-void
.end method
