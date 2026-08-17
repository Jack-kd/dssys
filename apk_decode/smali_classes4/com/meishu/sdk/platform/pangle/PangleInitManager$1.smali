.class Lcom/meishu/sdk/platform/pangle/PangleInitManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/pangle/PangleInitManager;->initSdk(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/pangle/PangleInitManager;

.field public final synthetic val$callback:Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/pangle/PangleInitManager;Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/pangle/PangleInitManager$1;->this$0:Lcom/meishu/sdk/platform/pangle/PangleInitManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/pangle/PangleInitManager$1;->val$callback:Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/PangleInitManager$1;->val$callback:Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;->onError(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public success()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/PangleInitManager$1;->this$0:Lcom/meishu/sdk/platform/pangle/PangleInitManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/pangle/PangleInitManager;->access$002(Lcom/meishu/sdk/platform/pangle/PangleInitManager;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/PangleInitManager$1;->val$callback:Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/meishu/sdk/platform/pangle/PangleInitManager$InitCallback;->onSuccess()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
