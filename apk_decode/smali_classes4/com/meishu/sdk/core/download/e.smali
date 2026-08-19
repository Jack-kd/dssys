.class public Lcom/meishu/sdk/core/download/e;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/download/b;

.field public final synthetic b:Lcom/meishu/sdk/core/download/d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/download/d;Lcom/meishu/sdk/core/download/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/download/e;->b:Lcom/meishu/sdk/core/download/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/download/e;->a:Lcom/meishu/sdk/core/download/b;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/download/e;->b:Lcom/meishu/sdk/core/download/d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/download/d;->e:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/meishu/sdk/core/download/h;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/meishu/sdk/core/download/e;->a:Lcom/meishu/sdk/core/download/b;

    .line 26
    .line 27
    invoke-interface {v1, v2}, Lcom/meishu/sdk/core/download/h;->b(Lcom/meishu/sdk/core/download/b;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
