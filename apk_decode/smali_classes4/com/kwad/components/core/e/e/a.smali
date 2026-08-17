.class public final Lcom/kwad/components/core/e/e/a;
.super Lcom/kwad/sdk/widget/KSFrameLayout;
.source "SourceFile"


# instance fields
.field private final RJ:Landroid/app/DialogFragment;

.field private final RK:Landroid/view/View;

.field private RL:Lcom/kwad/components/core/e/d/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DialogFragment;Lcom/kwad/components/core/e/d/a$a;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/KSFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/kwad/components/core/e/e/a;->RJ:Landroid/app/DialogFragment;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/kwad/components/core/e/e/a;->RL:Lcom/kwad/components/core/e/d/a$a;

    .line 7
    .line 8
    sget p2, Lcom/kwad/sdk/R$layout;->ksad_seconed_confirm_dialog_layout:I

    .line 9
    .line 10
    invoke-static {p1, p2, p0}, Lcom/kwad/sdk/wrapper/m;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    sget p1, Lcom/kwad/sdk/R$id;->ksad_second_confirm_root_view:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/kwad/components/core/e/e/a;->RK:Landroid/view/View;

    .line 20
    .line 21
    return-void
.end method

.method private static bJ()Lcom/kwad/sdk/mvp/Presenter;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/components/core/e/e/d;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/kwad/components/core/e/e/d;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private qJ()Lcom/kwad/components/core/e/e/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/components/core/e/e/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/e/e/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/e/e/a;->RJ:Landroid/app/DialogFragment;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/kwad/components/core/e/e/c;->RJ:Landroid/app/DialogFragment;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/kwad/components/core/e/e/a;->RL:Lcom/kwad/components/core/e/d/a$a;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/kwad/components/core/e/e/c;->RL:Lcom/kwad/components/core/e/d/a$a;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final ae()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->ae()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/components/core/e/e/a;->bJ()Lcom/kwad/sdk/mvp/Presenter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/e/e/a;->RK:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->N(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/kwad/components/core/e/e/a;->qJ()Lcom/kwad/components/core/e/e/c;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->q(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
