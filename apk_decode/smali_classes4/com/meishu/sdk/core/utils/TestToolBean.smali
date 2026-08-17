.class public Lcom/meishu/sdk/core/utils/TestToolBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean;
    }
.end annotation


# instance fields
.field private etag:Ljava/lang/String;

.field private pids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean;",
            ">;"
        }
    .end annotation
.end field

.field private test_status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "0"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/TestToolBean;->test_status:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/TestToolBean;->etag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/TestToolBean;->pids:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTest_status()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/TestToolBean;->test_status:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/TestToolBean;->etag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/TestToolBean$PidListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/TestToolBean;->pids:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setTest_status(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/TestToolBean;->test_status:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
