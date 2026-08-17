.class Lcom/octopus/ad/internal/activity/EndingPageActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/activity/EndingPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/activity/EndingPageActivity;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/activity/EndingPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/EndingPageActivity$1;->a:Lcom/octopus/ad/internal/activity/EndingPageActivity;

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
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "feedBackClick"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/k;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
