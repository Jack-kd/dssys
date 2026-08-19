.class public Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static c:Lcom/smartdigimkt/m3/c;

.field public static d:Lcom/smartdigimkt/s3/a;


# instance fields
.field public a:Landroid/app/Dialog;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->b:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    const-string v1, "confirm_dialog_privacy_agreement"

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object v2, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->c:Lcom/smartdigimkt/m3/c;

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "flag_apk_exists"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->b:Z

    .line 5
    sget-object v2, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->c:Lcom/smartdigimkt/m3/c;

    .line 6
    iget-object v2, v2, Lcom/smartdigimkt/m3/c;->c:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "style"

    const-string v5, "style_full_screen_translucent_dialog"

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "layout"

    const-string v9, "string"

    const-string v10, "id"

    if-eqz v2, :cond_2

    sget-object v2, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->c:Lcom/smartdigimkt/m3/c;

    instance-of v11, v2, Lcom/smartdigimkt/m3/k;

    if-eqz v11, :cond_1

    check-cast v2, Lcom/smartdigimkt/m3/k;

    .line 8
    iget-object v2, v2, Lcom/smartdigimkt/m3/k;->j0:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    move-object v3, v5

    move-object/from16 v16, v6

    goto/16 :goto_8

    .line 10
    :cond_2
    :goto_0
    sget-object v2, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->c:Lcom/smartdigimkt/m3/c;

    .line 11
    iget-object v2, v2, Lcom/smartdigimkt/m3/c;->s:Ljava/lang/String;

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->c:Lcom/smartdigimkt/m3/c;

    .line 13
    iget-object v2, v2, Lcom/smartdigimkt/m3/c;->r:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->c:Lcom/smartdigimkt/m3/c;

    .line 15
    iget-object v2, v2, Lcom/smartdigimkt/m3/c;->t:Ljava/lang/String;

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->c:Lcom/smartdigimkt/m3/c;

    .line 17
    iget-object v2, v2, Lcom/smartdigimkt/m3/c;->u:Ljava/lang/String;

    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 19
    :try_start_0
    sget-object v2, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->c:Lcom/smartdigimkt/m3/c;

    .line 20
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const-string v12, "confirm"

    invoke-static {v0, v12, v8}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v11, v8, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 21
    const-string v8, "confirm_dialog_icon"

    invoke-static {v0, v8, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;

    .line 22
    const-string v11, "confirm_dialog_title"

    invoke-static {v0, v11, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 23
    const-string v12, "confirm_dialog_version_name"

    invoke-static {v0, v12, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 24
    const-string v13, "confirm_dialog_publisher_name"

    invoke-static {v0, v13, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 25
    const-string v14, "confirm_dialog_permission_manage"

    invoke-static {v0, v14, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 26
    invoke-static {v0, v1, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 27
    const-string v4, "confirm_dialog_desc"

    invoke-static {v0, v4, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v16, v6

    .line 28
    const-string v6, "confirm_dialog_center_line2"

    invoke-static {v0, v6, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v17, v3

    .line 29
    const-string v3, "confirm_dialog_download_now"

    invoke-static {v0, v3, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v18, v5

    .line 30
    const-string v5, "confirm_dialog_give_up"

    invoke-static {v0, v5, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 31
    iget-boolean v10, v0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->b:Z

    if-eqz v10, :cond_4

    if-eqz v3, :cond_3

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object/from16 v19, v7

    const-string v7, "cta_download_finished"

    invoke-static {v0, v7, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move-object/from16 v19, v7

    :goto_1
    if-eqz v5, :cond_5

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v10, "confirm_dialog_install_give_up"

    invoke-static {v0, v10, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 35
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    move-object/from16 v19, v7

    .line 36
    :cond_5
    :goto_2
    iget-object v7, v2, Lcom/smartdigimkt/m3/c;->e:Ljava/lang/String;

    .line 37
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    .line 38
    invoke-virtual {v8, v10}, Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    const/4 v10, 0x4

    .line 39
    invoke-virtual {v8, v10}, Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 40
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    move-object/from16 v21, v5

    .line 41
    invoke-static {v0}, Lcom/smartdigimkt/t3/m;->a(Landroid/content/Context;)Lcom/smartdigimkt/t3/m;

    move-result-object v5

    move-object/from16 v22, v3

    new-instance v3, Lcom/smartdigimkt/t3/o;

    move-object/from16 v23, v6

    const/4 v6, 0x1

    invoke-direct {v3, v6, v7}, Lcom/smartdigimkt/t3/o;-><init>(ILjava/lang/String;)V

    iget v6, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v20, v4

    new-instance v4, Lcom/smartdigimkt/i/g;

    invoke-direct {v4, v7, v8}, Lcom/smartdigimkt/i/g;-><init>(Ljava/lang/String;Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;)V

    invoke-virtual {v5, v3, v6, v10, v4}, Lcom/smartdigimkt/t3/m;->a(Lcom/smartdigimkt/t3/o;IILcom/smartdigimkt/t3/l;)V

    goto :goto_3

    :cond_6
    move-object/from16 v22, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    .line 42
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    .line 43
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :goto_3
    instance-of v3, v2, Lcom/smartdigimkt/m3/k;

    if-eqz v3, :cond_7

    .line 47
    move-object v3, v2

    check-cast v3, Lcom/smartdigimkt/m3/k;

    .line 48
    iget-object v6, v3, Lcom/smartdigimkt/m3/k;->j0:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object/from16 v6, v16

    .line 49
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 50
    iget-object v6, v2, Lcom/smartdigimkt/m3/c;->c:Ljava/lang/String;

    .line 51
    :cond_8
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "confirm_dialog_version"

    invoke-static {v0, v4, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 53
    iget-object v5, v2, Lcom/smartdigimkt/m3/c;->s:Ljava/lang/String;

    .line 54
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "confirm_dialog_publisher"

    invoke-static {v0, v4, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 57
    iget-object v5, v2, Lcom/smartdigimkt/m3/c;->r:Ljava/lang/String;

    .line 58
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v1, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "confirm_dialog_application_permission"

    invoke-static {v0, v4, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v4, v3, :cond_9

    goto :goto_6

    :cond_9
    sub-int/2addr v3, v4

    .line 64
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_a

    .line 66
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 67
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_6
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v1, Lcom/smartdigimkt/i/h;

    invoke-direct {v1, v0, v2}, Lcom/smartdigimkt/i/h;-><init>(Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;Lcom/smartdigimkt/m3/c;)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v1, Lcom/smartdigimkt/i/i;

    invoke-direct {v1, v0, v2}, Lcom/smartdigimkt/i/i;-><init>(Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;Lcom/smartdigimkt/m3/c;)V

    invoke-virtual {v15, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, v2, Lcom/smartdigimkt/m3/c;->v:Ljava/lang/String;

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v4, v20

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v3, v23

    .line 74
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    new-instance v1, Lcom/smartdigimkt/i/j;

    invoke-direct {v1, v0, v2}, Lcom/smartdigimkt/i/j;-><init>(Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;Lcom/smartdigimkt/m3/c;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_b
    new-instance v1, Lcom/smartdigimkt/i/l;

    invoke-direct {v1, v0}, Lcom/smartdigimkt/i/l;-><init>(Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;)V

    move-object/from16 v3, v22

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v1, Lcom/smartdigimkt/i/n;

    invoke-direct {v1, v0}, Lcom/smartdigimkt/i/n;-><init>(Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;)V

    move-object/from16 v5, v21

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v1, Landroid/app/Dialog;

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-static {v0, v3, v2}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->a:Landroid/app/Dialog;

    move-object/from16 v2, v19

    .line 79
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 80
    iget-object v1, v0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->a:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 81
    iget-object v1, v0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 82
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "confirm_dialog_margin"

    const-string v4, "dimen"

    invoke-static {v0, v3, v4}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const v5, 0x3f7d1471

    if-le v3, v4, :cond_c

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, v5

    float-to-double v2, v2

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 86
    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setLayout(II)V

    goto :goto_7

    :cond_c
    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v2, v5

    float-to-double v4, v2

    .line 87
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 88
    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setLayout(II)V

    .line 89
    :cond_d
    :goto_7
    iget-object v1, v0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 90
    :catchall_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 91
    :goto_8
    :try_start_1
    sget-object v1, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->c:Lcom/smartdigimkt/m3/c;

    instance-of v4, v1, Lcom/smartdigimkt/m3/k;

    if-eqz v4, :cond_e

    .line 92
    check-cast v1, Lcom/smartdigimkt/m3/k;

    .line 93
    iget-object v6, v1, Lcom/smartdigimkt/m3/k;->j0:Ljava/lang/String;

    goto :goto_9

    :cond_e
    move-object/from16 v6, v16

    .line 94
    :goto_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 95
    sget-object v1, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->c:Lcom/smartdigimkt/m3/c;

    .line 96
    iget-object v6, v1, Lcom/smartdigimkt/m3/c;->c:Ljava/lang/String;

    .line 97
    :cond_f
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v4, "myoffer_confirm_dialog"

    invoke-static {v0, v4, v8}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 98
    const-string v4, "myoffer_confirm_msg"

    invoke-static {v0, v4, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 99
    const-string v5, "myoffer_confirm_give_up"

    invoke-static {v0, v5, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 100
    const-string v7, "myoffer_confirm_continue"

    invoke-static {v0, v7, v10}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v10, "sample_dialog_download_app"

    invoke-static {v0, v10, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 102
    iget-boolean v10, v0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->b:Z

    if-eqz v10, :cond_10

    .line 103
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v10, "sample_dialog_install_app"

    invoke-static {v0, v10, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 104
    :cond_10
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "sample_dialog_give_up"

    invoke-static {v0, v6, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "sample_dialog_confirm"

    invoke-static {v0, v6, v9}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v4, Lcom/smartdigimkt/i/d;

    invoke-direct {v4, v0}, Lcom/smartdigimkt/i/d;-><init>(Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v4, Lcom/smartdigimkt/i/f;

    invoke-direct {v4, v0}, Lcom/smartdigimkt/i/f;-><init>(Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v4, Landroid/app/Dialog;

    invoke-static {v0, v3, v2}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v4, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, v0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->a:Landroid/app/Dialog;

    .line 112
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 113
    iget-object v1, v0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->a:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 114
    iget-object v1, v0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 115
    :catchall_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartdigimkt/z3/d;->a:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->a:Landroid/app/Dialog;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->a:Landroid/app/Dialog;

    .line 13
    .line 14
    :cond_0
    sput-object v1, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->c:Lcom/smartdigimkt/m3/c;

    .line 15
    .line 16
    sput-object v1, Lcom/smartdigimkt/dlopt/activity/ApkConfirmDialogActivity;->d:Lcom/smartdigimkt/s3/a;

    .line 17
    .line 18
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/smartdigimkt/z3/d;->a:Z

    .line 6
    .line 7
    return-void
.end method
