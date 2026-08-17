.class Lcom/sigmob/sdk/base/common/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/i;->i()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Lcom/sigmob/sdk/base/common/i;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/i;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i$1;->b:Lcom/sigmob/sdk/base/common/i;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/i$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onCloseClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$1;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/common/i;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fourElements_close"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$1;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->b(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/views/q$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$1;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->b(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/views/q$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/views/q$b;->a()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Error;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onShowFail: error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onButtonClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$1;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->b(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/views/q$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$1;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->b(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/views/q$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/base/views/q$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$1;->b:Lcom/sigmob/sdk/base/common/i;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->clickUIType:Lcom/sigmob/sdk/base/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onShowSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fourElements_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$1;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->b(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/views/q$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$1;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->c(Lcom/sigmob/sdk/base/common/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$1;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->b(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/views/q$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/views/q$b;->b()V

    :cond_1
    return-void
.end method
