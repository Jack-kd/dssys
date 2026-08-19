.class public Lcom/meishu/sdk/core/utils/q1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/VideoLoadManager;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/q1;->a:Ljava/util/List;

    .line 2
    .line 3
    iput p3, p0, Lcom/meishu/sdk/core/utils/q1;->b:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/meishu/sdk/core/utils/q1;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/q1;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/meishu/sdk/core/bquery/h;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget v2, p0, Lcom/meishu/sdk/core/utils/q1;->b:I

    .line 22
    .line 23
    iget-object v3, p0, Lcom/meishu/sdk/core/utils/q1;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v1, v2, v3}, Lcom/meishu/sdk/core/bquery/h;->onFail(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method
