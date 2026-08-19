.class Lcom/sigmob/sdk/nativead/z$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/nativead/z$2;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/nativead/z$2;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/z$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->e(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->e(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->e(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->c()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;Lcom/sigmob/sdk/base/views/q;)Lcom/sigmob/sdk/base/views/q;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v2, "template"

    iput-object v2, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/z;->a()Lcom/sigmob/sdk/base/common/ah;

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
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "btn"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "appinfo"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->h(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->h(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/e;

    move-result-object v0

    sget-object v2, Lcom/sigmob/sdk/base/a;->a:Lcom/sigmob/sdk/base/a;

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object p1, p1, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    const-string p2, "action.native.temple.click"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/nativead/z;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z$2$1;->a:Lcom/sigmob/sdk/nativead/z$2;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/z$2;->a:Lcom/sigmob/sdk/nativead/z;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/z;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    const-string v1, "fourElements_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method
