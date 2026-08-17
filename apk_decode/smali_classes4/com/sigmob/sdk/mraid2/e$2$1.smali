.class Lcom/sigmob/sdk/mraid2/e$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid2/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid2/e$2;->a(Lcom/sigmob/sdk/mraid2/c;I)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/e$2;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/e$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->f(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/o;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "x"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "y"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/e;->f(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/o;

    move-result-object v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v2, v2, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/e;->c(Lcom/sigmob/sdk/mraid2/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float p2, p2

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v2, v2, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/e;->c(Lcom/sigmob/sdk/mraid2/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p2

    invoke-interface {v1, p1, v0, p2}, Lcom/sigmob/sdk/mraid2/o;->a(Lcom/sigmob/sdk/mraid2/c;II)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->f(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/o;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "x"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "y"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/e;->f(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/o;

    move-result-object v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v2, v2, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/e;->c(Lcom/sigmob/sdk/mraid2/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float p1, p1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v2, v2, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/e;->c(Lcom/sigmob/sdk/mraid2/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/sigmob/sdk/mraid2/o;->a(II)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->f(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/o;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "x"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "y"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v1, v1, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/e;->f(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/o;

    move-result-object v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v2, v2, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/e;->c(Lcom/sigmob/sdk/mraid2/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float p1, p1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/e$2$1;->a:Lcom/sigmob/sdk/mraid2/e$2;

    iget-object v2, v2, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/e;->c(Lcom/sigmob/sdk/mraid2/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/sigmob/sdk/mraid2/o;->b(II)V

    return-void
.end method
