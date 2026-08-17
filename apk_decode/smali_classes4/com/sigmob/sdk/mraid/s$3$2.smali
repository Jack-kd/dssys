.class Lcom/sigmob/sdk/mraid/s$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/s$3;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/s$3;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid/s$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/s$3$2;->a:Lcom/sigmob/sdk/mraid/s$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3$2;->a:Lcom/sigmob/sdk/mraid/s$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->p(Lcom/sigmob/sdk/mraid/s;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3$2;->a:Lcom/sigmob/sdk/mraid/s$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    if-eqz v0, :cond_0

    const-string v1, "fourElements_close"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3$2;->a:Lcom/sigmob/sdk/mraid/s$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

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
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3$2;->a:Lcom/sigmob/sdk/mraid/s$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->c(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3$2;->a:Lcom/sigmob/sdk/mraid/s$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->c(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3$2;->a:Lcom/sigmob/sdk/mraid/s$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    if-eqz v0, :cond_0

    const-string v1, "fourElements_show"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$3$2;->a:Lcom/sigmob/sdk/mraid/s$3;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/s$3;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "fourElementsDidAppear"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V

    return-void
.end method
