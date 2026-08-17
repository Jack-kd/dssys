.class final Lcom/kwad/components/ad/feed/widget/q$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/widget/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/widget/q$8;->onVideoPlayStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ju:Lcom/kwad/components/ad/feed/widget/q$8;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/widget/q$8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$8$1;->ju:Lcom/kwad/components/ad/feed/widget/q$8;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$8$1;->ju:Lcom/kwad/components/ad/feed/widget/q$8;

    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->aB(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->dx(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$8$1;->ju:Lcom/kwad/components/ad/feed/widget/q$8;

    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    const/16 v0, 0x9e

    invoke-static {p1, v0}, Lcom/kwad/components/ad/feed/widget/q;->b(Lcom/kwad/components/ad/feed/widget/q;I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;FFFF)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$8$1;->ju:Lcom/kwad/components/ad/feed/widget/q$8;

    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->aC(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->dx(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$8$1;->ju:Lcom/kwad/components/ad/feed/widget/q$8;

    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 4
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->aD(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/d;->eD(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$8$1;->ju:Lcom/kwad/components/ad/feed/widget/q$8;

    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$8;->jt:Lcom/kwad/components/ad/feed/widget/q;

    const/16 p2, 0x99

    invoke-static {p1, p2}, Lcom/kwad/components/ad/feed/widget/q;->b(Lcom/kwad/components/ad/feed/widget/q;I)V

    :cond_0
    return-void
.end method
