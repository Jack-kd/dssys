.class Lcom/meishu/sdk/activity/MeishuWebviewActivity$2;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuWebviewActivity;->safeOnCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuWebviewActivity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuWebviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity$2;->this$0:Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity$2;->this$0:Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
