.class Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->safeOnActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public notifyRunnableCatch(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/l;->notifyRunnableCatch(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->access$400(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public safeRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->access$000(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;

    .line 10
    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->access$102(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->access$200(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->access$102(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->access$300(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
