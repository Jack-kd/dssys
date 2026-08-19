.class public final Lcom/kwad/components/ad/reward/n/k;
.super Lcom/kwad/components/ad/reward/n/d;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/widget/d;


# instance fields
.field private DC:Landroid/widget/TextView;

.field private DD:Landroid/widget/TextView;

.field private DE:Landroid/view/View;

.field private DX:Landroid/view/ViewStub;

.field private DY:Landroid/view/ViewGroup;

.field private DZ:Lcom/kwad/components/core/widget/KsStyledTextButton;

.field private Dz:Lcom/kwad/components/ad/widget/KsPriceView;

.field private Ea:Lcom/kwad/components/core/widget/KsStyledTextButton;

.field private fM:Landroid/widget/TextView;

.field private kO:Landroid/widget/TextView;

.field private ov:Lcom/kwad/components/core/widget/KSCornerImageView;

.field private uj:Lcom/kwad/components/ad/reward/g;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/g;Landroid/view/ViewGroup;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/n/d;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/kwad/components/ad/reward/n/k;->DY:Landroid/view/ViewGroup;

    .line 6
    iput-object p1, p0, Lcom/kwad/components/ad/reward/n/k;->uj:Lcom/kwad/components/ad/reward/g;

    return-void
.end method

.method public constructor <init>(Lcom/kwad/components/ad/reward/g;Landroid/view/ViewStub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/n/d;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/kwad/components/ad/reward/n/k;->DX:Landroid/view/ViewStub;

    .line 3
    iput-object p1, p0, Lcom/kwad/components/ad/reward/n/k;->uj:Lcom/kwad/components/ad/reward/g;

    return-void
.end method

.method private a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/reward/model/a;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->ov:Lcom/kwad/components/core/widget/KSCornerImageView;

    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/model/a;->hA()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 5
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/k;->kO:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/model/a;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/k;->fM:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/model/a;->hB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/k;->DY:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/kwad/sdk/R$dimen;->ksad_reward_jinniu_end_origin_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->DY:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/kwad/sdk/R$color;->ksad_jinniu_end_origin_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/kwad/components/ad/reward/n/k;->Dz:Lcom/kwad/components/ad/widget/KsPriceView;

    invoke-virtual {v1}, Lcom/kwad/components/ad/widget/KsPriceView;->getConfig()Lcom/kwad/components/ad/widget/KsPriceView$a;

    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lcom/kwad/components/ad/widget/KsPriceView$a;->aE(I)Lcom/kwad/components/ad/widget/KsPriceView$a;

    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Lcom/kwad/components/ad/widget/KsPriceView$a;->aG(I)Lcom/kwad/components/ad/widget/KsPriceView$a;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/widget/KsPriceView$a;->aF(I)Lcom/kwad/components/ad/widget/KsPriceView$a;

    .line 13
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/k;->Dz:Lcom/kwad/components/ad/widget/KsPriceView;

    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/model/a;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/model/a;->getOriginPrice()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lcom/kwad/components/ad/widget/KsPriceView;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/model/a;->is()Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->DE:Landroid/view/View;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 16
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->DC:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/k;->DD:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/model/a;->it()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private f(Landroid/view/View;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->Ea:Lcom/kwad/components/core/widget/KsStyledTextButton;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/16 v2, 0x99

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->uj:Lcom/kwad/components/ad/reward/g;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const/16 v2, 0x26

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0, v3, p1, v2, v1}, Lcom/kwad/components/ad/reward/g;->a(ILandroid/content/Context;II)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->DZ:Lcom/kwad/components/core/widget/KsStyledTextButton;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->uj:Lcom/kwad/components/ad/reward/g;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    const/16 v2, 0x25

    .line 44
    .line 45
    :cond_2
    invoke-virtual {v0, v3, p1, v2, v1}, Lcom/kwad/components/ad/reward/g;->a(ILandroid/content/Context;II)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->DY:Landroid/view/ViewGroup;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->uj:Lcom/kwad/components/ad/reward/g;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    move v2, v3

    .line 66
    :cond_4
    invoke-virtual {v0, v3, p1, v2, v3}, Lcom/kwad/components/ad/reward/g;->a(ILandroid/content/Context;II)V

    .line 67
    .line 68
    .line 69
    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/ad/reward/n/k;->f(Landroid/view/View;Z)V

    return-void
.end method

.method public final a(Landroid/view/View;FFFF)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->uj:Lcom/kwad/components/ad/reward/g;

    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/kwad/sdk/core/response/helper/SlideConvertHelper;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;FFFF)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/reward/n/k;->f(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/kwad/components/ad/reward/n/r;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/components/ad/reward/n/d;->a(Lcom/kwad/components/ad/reward/n/r;)V

    .line 2
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/n/r;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/components/ad/reward/model/a;->V(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/ad/reward/model/a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/n/r;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/kwad/components/ad/reward/n/k;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/reward/model/a;)V

    return-void
.end method

.method public final hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->DY:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final ib()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/k;->DY:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method
