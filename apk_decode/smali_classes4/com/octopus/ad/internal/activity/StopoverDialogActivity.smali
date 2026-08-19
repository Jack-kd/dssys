.class public Lcom/octopus/ad/internal/activity/StopoverDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Lcom/octopus/ad/b/a;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a()V
    .locals 8

    .line 4
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/octopus/ad/R$style;->OctopusAlertDialogStyle:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/octopus/ad/R$layout;->oct_dialog_stopover:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    sget v2, Lcom/octopus/ad/R$id;->iv_gift:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->g:Landroid/widget/ImageView;

    .line 11
    sget v2, Lcom/octopus/ad/R$id;->rl_tip_start:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->h:Landroid/widget/RelativeLayout;

    .line 12
    sget v2, Lcom/octopus/ad/R$id;->rl_tip_countdown:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->i:Landroid/widget/RelativeLayout;

    .line 13
    sget v2, Lcom/octopus/ad/R$id;->tv_tip_time:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->j:Landroid/widget/TextView;

    .line 14
    sget v2, Lcom/octopus/ad/R$id;->tv_tip_end:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->k:Landroid/widget/TextView;

    .line 15
    sget v2, Lcom/octopus/ad/R$id;->iv_app_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 16
    sget v3, Lcom/octopus/ad/R$id;->tv_ad_title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 17
    sget v4, Lcom/octopus/ad/R$id;->tv_ad_description:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 18
    sget v5, Lcom/octopus/ad/R$id;->tv_button:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->l:Landroid/widget/TextView;

    .line 19
    sget v5, Lcom/octopus/ad/R$id;->iv_click:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 20
    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/octopus/ad/internal/utilities/ImageManager;->load(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->into(Landroid/widget/ImageView;)V

    .line 21
    iget-object v2, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v2, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x12c

    .line 24
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v3, -0x1

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v3, 0x2

    .line 26
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 27
    invoke-virtual {v5, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    sget v2, Lcom/octopus/ad/R$id;->tv_continue:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 29
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 30
    iget-object v2, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->l:Landroid/widget/TextView;

    new-instance v3, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$1;-><init>(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance v2, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$2;-><init>(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 33
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 34
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->l:Landroid/widget/TextView;

    const-string v0, "\u7acb\u5373\u524d\u5f80"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->l:Landroid/widget/TextView;

    const-string v0, "\u8fd4\u56de\u89c6\u9891"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->l:Landroid/widget/TextView;

    const-string v0, "\u8fd4\u56de\u9875\u9762"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->e:Z

    return p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->d:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->f:Lcom/octopus/ad/b/a;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/octopus/ad/b/a;

    const-wide/16 v1, 0x3db8

    const-wide/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/octopus/ad/b/a;-><init>(JJ)V

    iput-object v0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->f:Lcom/octopus/ad/b/a;

    .line 5
    new-instance v1, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$3;-><init>(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/b;)V

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->f:Lcom/octopus/ad/b/a;

    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->a()V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->e:Z

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "bundleData"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "mapData"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/util/Map;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const-string v0, "icon"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->a:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "title"

    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->b:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "description"

    .line 47
    .line 48
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/String;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->c:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-void

    .line 63
    :goto_0
    const-string v0, "OctopusAd"

    .line 64
    .line 65
    const-string v1, "An Exception Caught"

    .line 66
    .line 67
    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "StopoverFinish"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/k;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->d:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->a(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->b()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->d:Z

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->f:Lcom/octopus/ad/b/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
