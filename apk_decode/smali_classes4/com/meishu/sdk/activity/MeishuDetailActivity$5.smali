.class Lcom/meishu/sdk/activity/MeishuDetailActivity$5;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuDetailActivity;->loadAppDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FII)V
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$5;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$5;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 2
    .line 3
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$500()Lcom/meishu/sdk/platform/ms/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->b(Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
