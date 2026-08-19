.class public Lcom/fl/saas/adx/base/widget/FLCommonDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnCancleListener;,
        Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;
    }
.end annotation


# instance fields
.field private cancelName:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private gravity:I

.field private onCancleListener:Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnCancleListener;

.field private onSubmitListener:Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;

.field private submitName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tv_cancel:Landroid/widget/TextView;

.field private tv_content:Landroid/widget/TextView;

.field private tv_submit:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/fl/saas/R$style;->fl_adx_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/widget/FLCommonDialog;)Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->onSubmitListener:Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/widget/FLCommonDialog;)Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnCancleListener;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->onCancleListener:Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnCancleListener;

    return-object p0
.end method

.method private initView()V
    .locals 2

    sget v0, Lcom/fl/saas/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_content:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_title:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->submit:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_submit:Landroid/widget/TextView;

    new-instance v1, Lcom/fl/saas/adx/base/widget/FLCommonDialog$1;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/widget/FLCommonDialog$1;-><init>(Lcom/fl/saas/adx/base/widget/FLCommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/fl/saas/R$id;->cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_cancel:Landroid/widget/TextView;

    new-instance v1, Lcom/fl/saas/adx/base/widget/FLCommonDialog$2;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/widget/FLCommonDialog$2;-><init>(Lcom/fl/saas/adx/base/widget/FLCommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->submitName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_submit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->submitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->cancelName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_cancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->cancelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->gravity:I

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_content:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/fl/saas/R$layout;->fl_adx_dialog_commom:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->initView()V

    return-void
.end method

.method public setCanDismiss(Z)Lcom/fl/saas/adx/base/widget/FLCommonDialog;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public setCancelName(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;
    .locals 1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->cancelName:Ljava/lang/String;

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_cancel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;
    .locals 1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->content:Ljava/lang/String;

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_content:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setContentGravity(I)Lcom/fl/saas/adx/base/widget/FLCommonDialog;
    .locals 1

    iput p1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->gravity:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_content:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-object p0
.end method

.method public setOnCancleListener(Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnCancleListener;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->onCancleListener:Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnCancleListener;

    return-object p0
.end method

.method public setOnSubmitListener(Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->onSubmitListener:Lcom/fl/saas/adx/base/widget/FLCommonDialog$OnSubmitListener;

    return-object p0
.end method

.method public setSubmitName(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;
    .locals 1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->submitName:Ljava/lang/String;

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_submit:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/widget/FLCommonDialog;
    .locals 1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FLCommonDialog;->tv_title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method
