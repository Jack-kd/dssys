.class Lcom/meishu/sdk/activity/MeishuDetailActivity$4;
.super Lcom/meishu/sdk/core/safe/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/activity/MeishuDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$4;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    const/16 p1, 0x2bd

    .line 2
    .line 3
    if-eq p2, p1, :cond_1

    .line 4
    .line 5
    const/16 p1, 0x2be

    .line 6
    .line 7
    if-eq p2, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$4;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$400(Lcom/meishu/sdk/activity/MeishuDetailActivity;)Landroid/widget/ProgressBar;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/16 p2, 0x8

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$4;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$400(Lcom/meishu/sdk/activity/MeishuDetailActivity;)Landroid/widget/ProgressBar;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x1

    .line 33
    return p1
.end method
