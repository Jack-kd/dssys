.class Lcom/czhj/sdk/common/track/AdTracker$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/sdk/common/track/AdTracker;->insertToDB(Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/czhj/sdk/common/track/AdTracker;

.field final synthetic val$execCallBack:Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/AdTracker$3;->this$0:Lcom/czhj/sdk/common/track/AdTracker;

    iput-object p2, p0, Lcom/czhj/sdk/common/track/AdTracker$3;->val$execCallBack:Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker$3;->val$execCallBack:Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;->onFailed(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/track/AdTracker$3;->this$0:Lcom/czhj/sdk/common/track/AdTracker;

    invoke-static {v1}, Lcom/czhj/sdk/common/track/AdTracker;->access$000(Lcom/czhj/sdk/common/track/AdTracker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/track/AdTracker$3;->this$0:Lcom/czhj/sdk/common/track/AdTracker;

    invoke-static {v1}, Lcom/czhj/sdk/common/track/AdTracker;->access$100(Lcom/czhj/sdk/common/track/AdTracker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRequest_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/track/AdTracker$3;->this$0:Lcom/czhj/sdk/common/track/AdTracker;

    invoke-static {v1}, Lcom/czhj/sdk/common/track/AdTracker;->access$200(Lcom/czhj/sdk/common/track/AdTracker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " insert success! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker$3;->val$execCallBack:Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;->onSuccess()V

    :cond_0
    return-void
.end method
