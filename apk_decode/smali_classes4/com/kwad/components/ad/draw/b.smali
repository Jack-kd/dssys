.class public final Lcom/kwad/components/ad/draw/b;
.super Lcom/kwad/components/core/widget/a/c;
.source "SourceFile"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/draw/b;->aL()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/core/widget/a/c;-><init>(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/kwad/components/ad/draw/b;->mRootView:Landroid/view/View;

    .line 9
    .line 10
    return-void
.end method

.method private static aL()I
    .locals 3

    .line 1
    const/16 v0, 0x46

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Ke()F

    .line 4
    .line 5
    .line 6
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    float-to-int v1, v1

    .line 8
    const/16 v2, 0x64

    .line 9
    .line 10
    mul-int/2addr v1, v2

    .line 11
    if-ltz v1, :cond_1

    .line 12
    .line 13
    if-le v1, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return v1

    .line 17
    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final ah()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/b;->mRootView:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {}, Lcom/kwad/components/ad/draw/b;->aL()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/cb;->a(Landroid/view/View;IZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method
