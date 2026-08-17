.class public final Lcom/kwad/components/core/page/widget/a/a;
.super Lcom/kwad/components/core/page/widget/a/b;
.source "SourceFile"


# instance fields
.field private agl:Lcom/kwad/components/core/page/widget/a/c;

.field private agm:Lcom/kwad/components/core/page/widget/a/e;

.field private agn:Landroid/graphics/drawable/ColorDrawable;

.field private ago:I

.field private agp:Lcom/kwad/components/core/t/l$a;

.field private agq:Landroid/os/Handler;

.field private agr:Lcom/kwad/components/core/page/widget/a/h;

.field private ags:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/core/page/widget/a/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/components/core/page/widget/a/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    iput v0, p0, Lcom/kwad/components/core/page/widget/a/a;->ago:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->ags:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/widget/a/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/widget/a/a;->agq:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/widget/a/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/a;->agq:Landroid/os/Handler;

    return-object p1
.end method

.method public static a(Lcom/kwad/components/core/page/widget/a/e;)Lcom/kwad/components/core/page/widget/a/a;
    .locals 3

    .line 5
    new-instance v0, Lcom/kwad/components/core/page/widget/a/a;

    invoke-direct {v0}, Lcom/kwad/components/core/page/widget/a/a;-><init>()V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    const-string v2, "containerParams"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/widget/a/a;F)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/page/widget/a/a;->h(F)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/widget/a/a;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/kwad/components/core/page/widget/a/a;->by(I)V

    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/core/page/widget/a/a;)Lcom/kwad/components/core/page/widget/a/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/widget/a/a;->agr:Lcom/kwad/components/core/page/widget/a/h;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/core/page/widget/a/a;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/a;->vb()V

    return-void
.end method

.method private by(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lcom/kwad/sdk/R$id;->ksad_half_bottom_container:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/kwad/components/core/page/widget/a/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/page/widget/a/a;->ago:I

    .line 2
    .line 3
    return p1
.end method

.method private h(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lcom/kwad/sdk/R$id;->ksad_half_container_content_fragment:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    instance-of v1, v0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;

    .line 24
    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    cmpg-float p1, p1, v1

    .line 28
    .line 29
    if-gez p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 40
    .line 41
    iget v1, v1, Lcom/kwad/components/core/page/widget/a/e;->ahA:I

    .line 42
    .line 43
    int-to-float v1, v1

    .line 44
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->setTopRadius(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method private uX()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/kwad/components/core/page/widget/a/e;->ahF:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0x12

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/kwad/components/core/page/widget/a/a$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/kwad/components/core/page/widget/a/a$1;-><init>(Lcom/kwad/components/core/page/widget/a/a;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->agp:Lcom/kwad/components/core/t/l$a;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agp:Lcom/kwad/components/core/t/l$a;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/kwad/components/core/t/l;->a(Landroid/view/Window;Lcom/kwad/components/core/t/l$a;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private uY()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/kwad/components/core/page/widget/a/e;->ahD:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/kwad/components/core/t/v;->c(Landroid/view/Window;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private uZ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/kwad/components/core/page/widget/a/e;->ahD:Z

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/kwad/components/core/t/v;->d(Landroid/view/Window;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v2, -0x2

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 45
    .line 46
    iget-boolean v0, v0, Lcom/kwad/components/core/page/widget/a/e;->ahC:Z

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/kwad/components/core/proxy/j;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/kwad/components/core/page/widget/a/e;->vn()F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    float-to-int v2, v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method private va()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lcom/kwad/sdk/R$id;->ksad_container_coordinator_layout:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/kwad/components/core/page/widget/a/a$2;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/kwad/components/core/page/widget/a/a$2;-><init>(Lcom/kwad/components/core/page/widget/a/a;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 26
    .line 27
    iget-boolean v1, v1, Lcom/kwad/components/core/page/widget/a/e;->ahC:Z

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 33
    .line 34
    const-string v3, "#80000000"

    .line 35
    .line 36
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agn:Landroid/graphics/drawable/ColorDrawable;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agn:Landroid/graphics/drawable/ColorDrawable;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget v1, Lcom/kwad/sdk/R$id;->ksad_half_container_content_fragment:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/FrameLayout;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agl:Lcom/kwad/components/core/page/widget/a/c;

    .line 72
    .line 73
    if-nez v1, :cond_0

    .line 74
    .line 75
    new-instance v1, Lcom/kwad/components/core/page/widget/a/c;

    .line 76
    .line 77
    invoke-direct {v1}, Lcom/kwad/components/core/page/widget/a/c;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agl:Lcom/kwad/components/core/page/widget/a/c;

    .line 81
    .line 82
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agl:Lcom/kwad/components/core/page/widget/a/c;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/kwad/components/core/page/widget/a/c;->aW(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agl:Lcom/kwad/components/core/page/widget/a/c;

    .line 88
    .line 89
    const v3, 0x3f4ccccd    # 0.8f

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v3}, Lcom/kwad/components/core/page/widget/a/c;->k(F)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agl:Lcom/kwad/components/core/page/widget/a/c;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/kwad/components/core/proxy/j;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/kwad/components/core/page/widget/a/e;->vn()F

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    float-to-int v3, v3

    .line 107
    invoke-virtual {v1, v3}, Lcom/kwad/components/core/page/widget/a/c;->bD(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$LayoutParams;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agl:Lcom/kwad/components/core/page/widget/a/c;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$LayoutParams;->setBehavior(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->agl:Lcom/kwad/components/core/page/widget/a/c;

    .line 122
    .line 123
    new-instance v1, Lcom/kwad/components/core/page/widget/a/a$3;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/kwad/components/core/page/widget/a/a$3;-><init>(Lcom/kwad/components/core/page/widget/a/a;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/page/widget/a/c;->a(Lcom/kwad/components/core/page/widget/a/c$a;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, v0}, Lcom/kwad/components/core/page/widget/a/a;->h(F)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 136
    .line 137
    iget-boolean v0, v0, Lcom/kwad/components/core/page/widget/a/e;->ahB:Z

    .line 138
    .line 139
    xor-int/2addr v0, v2

    .line 140
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/page/widget/a/b;->setCanceledOnTouchOutside(Z)V

    .line 141
    .line 142
    .line 143
    :cond_2
    return-void
.end method

.method private vb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/b;->agD:Landroid/app/Fragment;

    .line 2
    .line 3
    check-cast v0, Lcom/kwad/components/core/page/widget/a/h;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/components/core/page/widget/a/h;->vo()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/a;->ago:I

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    return-void

    .line 22
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agl:Lcom/kwad/components/core/page/widget/a/c;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/page/widget/a/c;->setState(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->agp:Lcom/kwad/components/core/t/l$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agp:Lcom/kwad/components/core/t/l$a;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/kwad/components/core/t/l;->b(Landroid/view/Window;Lcom/kwad/components/core/t/l$a;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->agp:Lcom/kwad/components/core/t/l$a;

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_half_bottom_dialog_fragment:I

    .line 2
    .line 3
    return v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/a;->uY()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/kwad/components/core/page/widget/a/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/a;->uZ()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/a;->va()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/a;->uX()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "containerParams"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    instance-of v0, p1, Lcom/kwad/components/core/page/widget/a/e;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    check-cast p1, Lcom/kwad/components/core/page/widget/a/e;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/kwad/components/core/page/widget/a/e;->ahG:Lcom/kwad/components/core/page/widget/a/c;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/a;->agl:Lcom/kwad/components/core/page/widget/a/c;

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 35
    .line 36
    iget p1, p1, Lcom/kwad/components/core/page/widget/a/e;->ahz:F

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/page/widget/a/b;->j(F)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/a;->agm:Lcom/kwad/components/core/page/widget/a/e;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/kwad/components/core/page/widget/a/e;->ahH:Ljava/util/Map;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    const-string v0, "merchantLaunchToken"

    .line 48
    .line 49
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/String;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/a;->ags:Ljava/lang/String;

    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a;->agq:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/kwad/components/core/page/widget/a/a;->agq:Landroid/os/Handler;

    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final uW()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$style;->ksad_Theme_Dialog_Popup_ContainerTransparent:I

    .line 2
    .line 3
    return v0
.end method
