.class Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$2;
.super Lcom/meishu/sdk/core/service/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$2;->this$0:Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/service/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityPause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onAppStateUpdate(Z)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity$2;->this$0:Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v0}, Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;->access$002(Lcom/meishu/sdk/activity/MeishuOpenDeepLinkActivity;Z)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method
