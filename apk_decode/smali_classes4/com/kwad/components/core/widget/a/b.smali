.class public final Lcom/kwad/components/core/widget/a/b;
.super Lcom/kwad/components/core/widget/a/a;
.source "SourceFile"


# instance fields
.field private final awA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private awF:Lcom/kwad/sdk/api/core/fragment/KsFragment;

.field private awG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/core/fragment/KsFragment;Landroid/view/View;I)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/api/core/fragment/KsFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 p3, 0x46

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/kwad/components/core/widget/a/a;-><init>(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/kwad/components/core/widget/a/b;->awA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/kwad/components/core/widget/a/b;->awF:Lcom/kwad/sdk/api/core/fragment/KsFragment;

    .line 15
    .line 16
    return-void
.end method

.method private static a(Lcom/kwad/sdk/api/core/fragment/KsFragment;)Z
    .locals 1
    .param p0    # Lcom/kwad/sdk/api/core/fragment/KsFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->isResumed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->isAllFragmentIsHidden()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->isVisible()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method


# virtual methods
.method public final ah()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/widget/a/b;->awF:Lcom/kwad/sdk/api/core/fragment/KsFragment;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/kwad/components/core/widget/a/b;->a(Lcom/kwad/sdk/api/core/fragment/KsFragment;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "message fragment"

    .line 14
    .line 15
    iput-object v0, p0, Lcom/kwad/components/core/widget/a/b;->awG:Ljava/lang/String;

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const-string v0, "message view"

    .line 19
    .line 20
    iput-object v0, p0, Lcom/kwad/components/core/widget/a/b;->awG:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/kwad/components/core/widget/a/a;->Ac()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public final release()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/widget/a/a;->release()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/kwad/components/core/widget/a/b;->awF:Lcom/kwad/sdk/api/core/fragment/KsFragment;

    .line 6
    .line 7
    return-void
.end method
