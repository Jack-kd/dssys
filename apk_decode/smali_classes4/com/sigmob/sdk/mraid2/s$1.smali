.class Lcom/sigmob/sdk/mraid2/s$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid2/s;->a()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/s;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/s;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->c()V

    return-void
.end method

.method public a(IIII)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    int-to-float p4, p4

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p4, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 3

    .line 3
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/s;->b(Lcom/sigmob/sdk/mraid2/s;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/s;->c(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/nativead/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Landroid/app/Dialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    new-instance v2, Lcom/sigmob/sdk/nativead/b;

    invoke-direct {v2, v0, p1}, Lcom/sigmob/sdk/nativead/b;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {v1, v2}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Lcom/sigmob/sdk/nativead/b;)Lcom/sigmob/sdk/nativead/b;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/s;->c(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/nativead/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/nativead/b;->a()V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/s;->c(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/nativead/b;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/mraid2/s$1$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/s$1$1;-><init>(Lcom/sigmob/sdk/mraid2/s$1;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/nativead/b;->a(Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/webkit/ConsoleMessage;)Z
    .locals 11

    .line 4
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/mraid2/s$4;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConsoleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v10, 0x0

    const-string v3, "h5_error"

    const-string v4, "mraid2"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :goto_0
    return v2
.end method

.method public a(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 5
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->d()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Z)Z

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    const-string v1, "action.interstitial.show"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;)V

    return-void
.end method
