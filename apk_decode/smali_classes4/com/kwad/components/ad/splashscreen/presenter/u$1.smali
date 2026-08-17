.class final Lcom/kwad/components/ad/splashscreen/presenter/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/utils/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/splashscreen/presenter/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$1;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAudioBeOccupied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$1;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->a(Lcom/kwad/components/ad/splashscreen/presenter/u;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$1;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/u;->a(Lcom/kwad/components/ad/splashscreen/presenter/u;)Landroid/widget/ImageView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$1;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/u;->a(Lcom/kwad/components/ad/splashscreen/presenter/u;)Landroid/widget/ImageView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/u$1$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/splashscreen/presenter/u$1$1;-><init>(Lcom/kwad/components/ad/splashscreen/presenter/u$1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onAudioBeReleased()V
    .locals 0

    return-void
.end method
