.class final Lcom/kwad/components/ad/splashscreen/presenter/p$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/splashscreen/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/p;->b(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

.field final synthetic Iw:F


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/p;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$6;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$6;->Iw:F

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lcom/kwad/sdk/core/adlog/c/b;)V
    .locals 1
    .param p1    # Lcom/kwad/sdk/core/adlog/c/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$6;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->k(Lcom/kwad/components/ad/splashscreen/presenter/p;)Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;->style:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/adlog/c/b;->em(I)Lcom/kwad/sdk/core/adlog/c/b;

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$6;->Iw:F

    .line 13
    .line 14
    float-to-int v0, v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/adlog/c/b;->en(I)Lcom/kwad/sdk/core/adlog/c/b;

    .line 16
    .line 17
    .line 18
    return-void
.end method
