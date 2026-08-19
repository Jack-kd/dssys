.class public final synthetic Lcom/fl/saas/R1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field public final synthetic a:Lcom/fl/saas/d1;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/R1;->a:Lcom/fl/saas/d1;

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/R1;->a:Lcom/fl/saas/d1;

    invoke-static {v0, p1, p2}, Lcom/fl/saas/d1;->a(Lcom/fl/saas/d1;Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
