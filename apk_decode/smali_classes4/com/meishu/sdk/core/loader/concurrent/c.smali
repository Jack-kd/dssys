.class public Lcom/meishu/sdk/core/loader/concurrent/c;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/loader/concurrent/e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/concurrent/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/concurrent/c;->a:Lcom/meishu/sdk/core/loader/concurrent/e;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/c;->a:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
