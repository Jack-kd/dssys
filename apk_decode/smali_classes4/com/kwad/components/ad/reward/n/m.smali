.class public final Lcom/kwad/components/ad/reward/n/m;
.super Lcom/kwad/components/ad/reward/n/d;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DT:Landroid/app/DialogFragment;

.field private DW:Landroid/view/View;

.field private Ej:Landroid/view/ViewGroup;

.field private Ek:Landroid/view/View;

.field private El:Landroid/widget/TextView;

.field private Em:Landroid/widget/TextView;

.field private En:Landroid/widget/TextView;

.field private Eo:Landroid/view/View;

.field private iF:Landroid/widget/ImageView;

.field private kO:Landroid/widget/TextView;

.field private tI:Lcom/kwad/components/ad/reward/h$a;


# direct methods
.method public constructor <init>(Landroid/app/DialogFragment;Lcom/kwad/sdk/core/response/model/AdTemplate;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/kwad/components/ad/reward/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/n/d;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->DT:Landroid/app/DialogFragment;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/kwad/components/ad/reward/n/m;->tI:Lcom/kwad/components/ad/reward/h$a;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->cY(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 p2, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget p1, Lcom/kwad/sdk/R$layout;->ksad_live_origin_dialog:I

    .line 20
    .line 21
    invoke-virtual {p3, p1, p4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/view/ViewGroup;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/reward/n/m;->t(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    sget p1, Lcom/kwad/sdk/R$layout;->ksad_live_subscribe_dialog:I

    .line 35
    .line 36
    invoke-virtual {p3, p1, p4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/view/ViewGroup;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 43
    .line 44
    invoke-direct {p0, p2}, Lcom/kwad/components/ad/reward/n/m;->t(Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private t(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 2
    .line 3
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_subscribe_dialog_btn_close:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Ek:Landroid/view/View;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 12
    .line 13
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_subscribe_dialog_title:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->kO:Landroid/widget/TextView;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 24
    .line 25
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_subscribe_dialog_icon:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->iF:Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 36
    .line 37
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_subscribe_dialog_content_txt:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Em:Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 48
    .line 49
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_subscribe_dialog_content:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->El:Landroid/widget/TextView;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 60
    .line 61
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_subscribe_dialog_btn_continue:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->DW:Landroid/view/View;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 70
    .line 71
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_subscribe_dialog_btn_deny:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Eo:Landroid/view/View;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 80
    .line 81
    sget v1, Lcom/kwad/sdk/R$id;->ksad_live_subscribe_dialog_vide_detail:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/TextView;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->En:Landroid/widget/TextView;

    .line 90
    .line 91
    if-eqz p1, :cond_0

    .line 92
    .line 93
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->Ek:Landroid/view/View;

    .line 94
    .line 95
    const/16 v0, 0x8

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->Ek:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->DW:Landroid/view/View;

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->Eo:Landroid/view/View;

    .line 111
    .line 112
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->En:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/ad/reward/h$c;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/h$c;->hA()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lcom/kwad/sdk/R$drawable;->ksad_ic_default_user_avatar:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/kwad/components/ad/reward/n/m;->iF:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-static {v2, v0, v1}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadCircleIcon(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/h$c;->getTitle()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/kwad/components/ad/reward/n/m;->kO:Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    new-instance v1, Landroid/text/SpannableString;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/kwad/components/ad/reward/n/m;->ib()Landroid/view/ViewGroup;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget v3, Lcom/kwad/sdk/R$color;->ksad_reward_main_color:I

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 56
    .line 57
    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x4

    .line 61
    const/4 v5, 0x2

    .line 62
    const/16 v6, 0x12

    .line 63
    .line 64
    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 65
    .line 66
    .line 67
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 68
    .line 69
    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v2, v0, -0x2

    .line 77
    .line 78
    invoke-virtual {v1, v3, v2, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->kO:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->El:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/h$c;->hB()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Em:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/h$c;->hC()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->En:Landroid/widget/TextView;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/kwad/components/ad/reward/h$c;->tR:Ljava/lang/String;

    .line 107
    .line 108
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string v1, "%s"

    .line 113
    .line 114
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final ib()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Ej:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Ek:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->DT:Landroid/app/DialogFragment;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->tI:Lcom/kwad/components/ad/reward/h$a;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/kwad/components/core/webview/tachikoma/f/c;->hv()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->DW:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->DT:Landroid/app/DialogFragment;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->tI:Lcom/kwad/components/ad/reward/h$a;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/kwad/components/core/webview/tachikoma/f/c;->hv()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->Eo:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->DT:Landroid/app/DialogFragment;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->tI:Lcom/kwad/components/ad/reward/h$a;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-interface {p1, v0}, Lcom/kwad/components/core/webview/tachikoma/f/c;->H(Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/m;->En:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/m;->tI:Lcom/kwad/components/ad/reward/h$a;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    const/16 v0, 0x83

    .line 78
    .line 79
    const/4 v1, 0x2

    .line 80
    invoke-interface {p1, v0, v1}, Lcom/kwad/components/ad/reward/h$a;->h(II)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method
