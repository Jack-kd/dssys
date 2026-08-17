.class public final Lcom/kwad/components/ad/feed/widget/g;
.super Lcom/kwad/components/ad/feed/widget/c;
.source "SourceFile"


# instance fields
.field private final iq:Lcom/kwad/components/core/video/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/feed/widget/c;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/kwad/components/ad/feed/widget/g$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/feed/widget/g$1;-><init>(Lcom/kwad/components/ad/feed/widget/g;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/g;->iq:Lcom/kwad/components/core/video/a$a;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/kwad/components/ad/feed/widget/c;->setmIsShowComplianceView(Z)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    invoke-virtual {p0, p1}, Lcom/kwad/components/ad/feed/widget/c;->setRadiusDp(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/feed/widget/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/components/core/widget/b;->zN()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/ad/feed/widget/g;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/widget/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final bC()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/feed/widget/c;->bC()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_feed_biserial_video:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final cx()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/c;->ij:Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 2
    .line 3
    const v1, 0x3fe49249

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/KSRelativeLayout;->setRatio(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final getDefaultClickArea()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_feed_biserial_video:I

    .line 2
    .line 3
    return v0
.end method

.method public final getVideoAdClickListener()Lcom/kwad/components/core/video/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/g;->iq:Lcom/kwad/components/core/video/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setMargin(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KD()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
