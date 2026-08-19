.class Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/model/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/model/action/AbstractActionExecutor;->execute(Lorg/fourthline/cling/model/action/ActionInvocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/model/action/AbstractActionExecutor;

.field final synthetic val$actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/action/AbstractActionExecutor;Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;->this$0:Lorg/fourthline/cling/model/action/AbstractActionExecutor;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;->val$actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public execute(Lorg/fourthline/cling/model/ServiceManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;->this$0:Lorg/fourthline/cling/model/action/AbstractActionExecutor;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;->val$actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 4
    .line 5
    invoke-interface {p1}, Lorg/fourthline/cling/model/ServiceManager;->getImplementation()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lorg/fourthline/cling/model/action/AbstractActionExecutor;->execute(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Action invocation: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/fourthline/cling/model/action/AbstractActionExecutor$1;->val$actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
