.class Lcom/sigmob/sdk/mraid2/s$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid2/s$1;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/s$1;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/s$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s$1$1;->a:Lcom/sigmob/sdk/mraid2/s$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$1$1;->a:Lcom/sigmob/sdk/mraid2/s$1;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    const-string v1, "feedbackDidDisappear"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$1$1;->a:Lcom/sigmob/sdk/mraid2/s$1;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/s;->d(Lcom/sigmob/sdk/mraid2/s;)V

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$1$1;->a:Lcom/sigmob/sdk/mraid2/s$1;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    const-string p2, "feedbackDidDisappear"

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$1$1;->a:Lcom/sigmob/sdk/mraid2/s$1;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/s;->d(Lcom/sigmob/sdk/mraid2/s;)V

    return-void
.end method

.method public onShow()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$1$1;->a:Lcom/sigmob/sdk/mraid2/s$1;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/s$1;->a:Lcom/sigmob/sdk/mraid2/s;

    const-string v1, "feedbackDidAppear"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Ljava/lang/String;Z)V

    return-void
.end method
