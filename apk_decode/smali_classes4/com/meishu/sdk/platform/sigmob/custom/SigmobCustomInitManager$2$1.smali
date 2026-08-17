.class Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2$1;->this$1:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onStartFail\uff1a"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "SigmobCustomInitManager"

    .line 19
    .line 20
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    const-string v0, "SigmobCustomInitManager"

    .line 2
    .line 3
    const-string v1, "start success"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2$1;->this$1:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->access$002(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2$1;->this$1:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;->val$callback:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;->onSuccess()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
