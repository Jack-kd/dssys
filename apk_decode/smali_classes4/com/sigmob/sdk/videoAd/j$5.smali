.class Lcom/sigmob/sdk/videoAd/j$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/j;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/sigmob/sdk/videoAd/j;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoAd/j;I)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    iput p2, p0, Lcom/sigmob/sdk/videoAd/j$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->Q(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->Q(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->Q(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->c()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(Lcom/sigmob/sdk/videoAd/j;Lcom/sigmob/sdk/base/views/q;)Lcom/sigmob/sdk/base/views/q;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(Lcom/sigmob/sdk/videoAd/j;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->d()V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "fourElements_close"

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

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
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->q(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/f;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/j;->z()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "btn"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    const-string v1, "appinfo"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->v(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->j()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->b()V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$5;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "fourElements_show"

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    return-void
.end method
