.class Lcom/sigmob/sdk/nativead/ab$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/nativead/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/nativead/ab;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/ab;->f(Lcom/sigmob/sdk/nativead/ab;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/ab;->f(Lcom/sigmob/sdk/nativead/ab;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/ab;->f(Lcom/sigmob/sdk/nativead/ab;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->c()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/ab;->a(Lcom/sigmob/sdk/nativead/ab;Lcom/sigmob/sdk/base/views/q;)Lcom/sigmob/sdk/base/views/q;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/ab;->d(Lcom/sigmob/sdk/nativead/ab;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v2, "preview"

    iput-object v2, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    const-string v2, "fourElements_close"

    invoke-interface {v0, v2, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/Error;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "0"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "btn"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "appinfo"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/ab;->g(Lcom/sigmob/sdk/nativead/ab;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v0

    sget-object v2, Lcom/sigmob/sdk/base/a;->e:Lcom/sigmob/sdk/base/a;

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/ab;->h(Lcom/sigmob/sdk/nativead/ab;)Lcom/sigmob/sdk/nativead/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->r()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->a()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$5;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    const-string v1, "fourElements_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method
