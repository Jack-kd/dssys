.class Lcom/octopus/ad/internal/activity/StopoverDialogActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/activity/StopoverDialogActivity;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$1;->a:Lcom/octopus/ad/internal/activity/StopoverDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$1;->a:Lcom/octopus/ad/internal/activity/StopoverDialogActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->a(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$1;->a:Lcom/octopus/ad/internal/activity/StopoverDialogActivity;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "adClick"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/k;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$1;->a:Lcom/octopus/ad/internal/activity/StopoverDialogActivity;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->a(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;Z)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
