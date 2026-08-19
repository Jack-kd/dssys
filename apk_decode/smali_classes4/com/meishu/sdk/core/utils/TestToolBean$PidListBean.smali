.class public Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/utils/TestToolBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PidListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean$PidsBean;
    }
.end annotation


# instance fields
.field private pids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean$PidsBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


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
.method public getPids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean$PidsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean;->pids:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setPids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean$PidsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean;->pids:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
