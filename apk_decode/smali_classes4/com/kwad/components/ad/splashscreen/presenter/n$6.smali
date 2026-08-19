.class final Lcom/kwad/components/ad/splashscreen/presenter/n$6;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/n;->fY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic IJ:Lcom/kwad/components/ad/splashscreen/presenter/n;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/n$6;->IJ:Lcom/kwad/components/ad/splashscreen/presenter/n;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/n$6;->IJ:Lcom/kwad/components/ad/splashscreen/presenter/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/n;->p(Lcom/kwad/components/ad/splashscreen/presenter/n;)Lcom/kwad/components/ad/splashscreen/widget/KsShakeView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/kwad/components/ad/splashscreen/widget/KsShakeView;->od()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
