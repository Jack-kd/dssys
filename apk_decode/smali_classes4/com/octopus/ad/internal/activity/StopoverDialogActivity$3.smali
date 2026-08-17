.class Lcom/octopus/ad/internal/activity/StopoverDialogActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->b()V
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
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$3;->a:Lcom/octopus/ad/internal/activity/StopoverDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    move-result-object v0

    const-string v1, "getReward"

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/k;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$3;->a:Lcom/octopus/ad/internal/activity/StopoverDialogActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->b(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;Z)Z

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$3;->a:Lcom/octopus/ad/internal/activity/StopoverDialogActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->a(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;I)V

    return-void
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 2
    iget-object p2, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$3;->a:Lcom/octopus/ad/internal/activity/StopoverDialogActivity;

    invoke-static {p2}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->b(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/octopus/ad/internal/activity/StopoverDialogActivity$3;->a:Lcom/octopus/ad/internal/activity/StopoverDialogActivity;

    invoke-static {p2}, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;->b(Lcom/octopus/ad/internal/activity/StopoverDialogActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s\u79d2"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
