.class final Lcom/kwad/components/core/video/a$1;
.super Lcom/kwad/sdk/core/download/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic amv:Lcom/kwad/components/core/video/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/video/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/video/a$1;->amv:Lcom/kwad/components/core/video/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/core/download/a/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDownloadFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/a$1;->amv:Lcom/kwad/components/core/video/a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/components/core/video/a;->amp:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/components/core/video/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aK(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onDownloadFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/a$1;->amv:Lcom/kwad/components/core/video/a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/components/core/video/a;->amp:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/components/core/video/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cK(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onDownloadStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/a$1;->amv:Lcom/kwad/components/core/video/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/video/a;->amp:Landroid/widget/TextView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->eF(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onIdle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/a$1;->amv:Lcom/kwad/components/core/video/a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/components/core/video/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aK(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/video/a;->bp(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onInstalled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/a$1;->amv:Lcom/kwad/components/core/video/a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/components/core/video/a;->amp:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/components/core/video/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->af(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onPaused(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kwad/components/core/video/a$1;->amv:Lcom/kwad/components/core/video/a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kwad/components/core/video/a;->amp:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-static {}, Lcom/kwad/sdk/core/response/helper/a;->Nx()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onProgressUpdate(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/a$1;->amv:Lcom/kwad/components/core/video/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/video/a;->amp:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->eF(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
