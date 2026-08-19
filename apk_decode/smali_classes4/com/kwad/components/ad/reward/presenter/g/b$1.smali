.class final Lcom/kwad/components/ad/reward/presenter/g/b$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/presenter/g/b;->a(Lcom/kwad/sdk/core/view/AdBaseFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Br:Lcom/kwad/sdk/widget/KSFrameLayout;

.field final synthetic Bs:F

.field final synthetic Bt:Lcom/kwad/components/ad/reward/presenter/g/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/presenter/g/b;Lcom/kwad/sdk/widget/KSFrameLayout;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/g/b$1;->Bt:Lcom/kwad/components/ad/reward/presenter/g/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/reward/presenter/g/b$1;->Br:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 4
    .line 5
    iput p3, p0, Lcom/kwad/components/ad/reward/presenter/g/b$1;->Bs:F

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/g/b$1;->Br:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    return-void
.end method
