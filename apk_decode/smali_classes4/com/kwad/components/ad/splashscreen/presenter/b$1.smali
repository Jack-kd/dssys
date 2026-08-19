.class final Lcom/kwad/components/ad/splashscreen/presenter/b$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/b;->ay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Ht:Lcom/kwad/components/ad/splashscreen/presenter/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/b$1;->Ht:Lcom/kwad/components/ad/splashscreen/presenter/b;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/b$1;->Ht:Lcom/kwad/components/ad/splashscreen/presenter/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/b;->a(Lcom/kwad/components/ad/splashscreen/presenter/b;)Lcom/kwad/components/core/widget/KsLogoView;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/kwad/components/ad/splashscreen/presenter/b;->a(Lcom/kwad/components/ad/splashscreen/presenter/b;Landroid/view/ViewGroup;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
