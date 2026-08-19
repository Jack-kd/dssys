.class public Lcom/meishu/sdk/activity/MeishuAlertDialogActivity;
.super Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$CancelHandler;,
        Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$ConfirmHandler;
    }
.end annotation


# static fields
.field private static cancelHandler:Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$CancelHandler;

.field private static confirmHandler:Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$ConfirmHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setCancelHandler(Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$CancelHandler;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/meishu/sdk/activity/MeishuAlertDialogActivity;->cancelHandler:Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$CancelHandler;

    .line 2
    .line 3
    return-void
.end method

.method public static setConfirmHandler(Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$ConfirmHandler;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/meishu/sdk/activity/MeishuAlertDialogActivity;->confirmHandler:Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$ConfirmHandler;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lcom/meishu/sdk/R$id;->cancel_button:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/meishu/sdk/activity/MeishuAlertDialogActivity;->cancelHandler:Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$CancelHandler;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$CancelHandler;->handle()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v0, Lcom/meishu/sdk/R$id;->confirm_button:I

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    sget-object p1, Lcom/meishu/sdk/activity/MeishuAlertDialogActivity;->confirmHandler:Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$ConfirmHandler;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$ConfirmHandler;->handle()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public safeOnCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/meishu/sdk/R$layout;->ms_activity_meishu_alert_dialog:I

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    sget p1, Lcom/meishu/sdk/R$id;->cancel_button:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    sget p1, Lcom/meishu/sdk/R$id;->confirm_button:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public safeOnDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeAppCompatActivity;->safeOnDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/meishu/sdk/activity/MeishuAlertDialogActivity;->confirmHandler:Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$ConfirmHandler;

    .line 6
    .line 7
    sput-object v0, Lcom/meishu/sdk/activity/MeishuAlertDialogActivity;->cancelHandler:Lcom/meishu/sdk/activity/MeishuAlertDialogActivity$CancelHandler;

    .line 8
    .line 9
    return-void
.end method
