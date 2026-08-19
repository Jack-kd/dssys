.class Lcom/sigmob/sdk/splash/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/i;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/i;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/splash/i;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/splash/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onCloseClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/splash/i;->a(Lcom/sigmob/sdk/splash/i;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/splash/i;->b(Lcom/sigmob/sdk/splash/i;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->a(Lcom/sigmob/sdk/splash/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/i;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->b(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->b(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Error;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sigmob/sdk/splash/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#onCloseClick"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    const-string p2, "appinfo"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    const-string p2, "btn"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/i;->d(Lcom/sigmob/sdk/splash/i;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string p2, "click"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/splash/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onShowSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->b(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->b(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/splash/i;->a(Lcom/sigmob/sdk/splash/i;Z)Z

    return-void
.end method
