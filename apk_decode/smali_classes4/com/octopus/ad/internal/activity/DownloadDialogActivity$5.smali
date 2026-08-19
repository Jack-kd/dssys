.class Lcom/octopus/ad/internal/activity/DownloadDialogActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$5;->b:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$5;->a:Landroid/app/AlertDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$5;->a:Landroid/app/AlertDialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$5;->b:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
