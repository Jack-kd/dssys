.class public Lcom/meishu/sdk/core/domain/ClickIdResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;
    }
.end annotation


# instance fields
.field private data:Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;

.field private ret:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getData()Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/ClickIdResponse;->data:Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRet()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/ClickIdResponse;->ret:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public setData(Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/ClickIdResponse;->data:Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setRet(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/ClickIdResponse;->ret:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
