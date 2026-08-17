.class final Lcom/kwad/components/ad/splashscreen/presenter/endcard/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/splashscreen/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/splashscreen/presenter/endcard/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Ka:Lcom/kwad/components/ad/splashscreen/presenter/endcard/f;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/endcard/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/endcard/f$1;->Ka:Lcom/kwad/components/ad/splashscreen/presenter/endcard/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final lY()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/endcard/f$1;->Ka:Lcom/kwad/components/ad/splashscreen/presenter/endcard/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/endcard/f;->a(Lcom/kwad/components/ad/splashscreen/presenter/endcard/f;)Lcom/kwad/components/ad/splashscreen/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isEndCardPage:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/endcard/f$1;->Ka:Lcom/kwad/components/ad/splashscreen/presenter/endcard/f;

    .line 13
    .line 14
    new-instance v2, Lcom/kwad/components/ad/splashscreen/presenter/endcard/e;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/kwad/components/ad/splashscreen/presenter/endcard/e;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/endcard/f$1;->Ka:Lcom/kwad/components/ad/splashscreen/presenter/endcard/f;

    .line 23
    .line 24
    new-instance v2, Lcom/kwad/components/ad/splashscreen/presenter/endcard/h;

    .line 25
    .line 26
    invoke-direct {v2}, Lcom/kwad/components/ad/splashscreen/presenter/endcard/h;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
