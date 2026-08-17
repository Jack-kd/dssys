.class public Lcom/meishu/sdk/core/utils/n1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/o1;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/o1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/n1;->a:Lcom/meishu/sdk/core/utils/o1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/n1;->a:Lcom/meishu/sdk/core/utils/o1;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/meishu/sdk/core/utils/o1;->a:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/n1;->a:Lcom/meishu/sdk/core/utils/o1;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/o1;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/n1;->a:Lcom/meishu/sdk/core/utils/o1;

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/o1;->a(Lcom/meishu/sdk/core/utils/o1;Z)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/n1;->a:Lcom/meishu/sdk/core/utils/o1;

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/o1;->a(Lcom/meishu/sdk/core/utils/o1;Z)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_1
    move-exception v1

    .line 36
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/n1;->a:Lcom/meishu/sdk/core/utils/o1;

    .line 37
    .line 38
    invoke-static {v2, v0}, Lcom/meishu/sdk/core/utils/o1;->a(Lcom/meishu/sdk/core/utils/o1;Z)Z

    .line 39
    .line 40
    .line 41
    throw v1
.end method
