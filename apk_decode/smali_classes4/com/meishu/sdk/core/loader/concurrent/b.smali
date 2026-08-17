.class public Lcom/meishu/sdk/core/loader/concurrent/b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/meishu/sdk/core/loader/concurrent/e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/concurrent/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/concurrent/b;->b:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/concurrent/b;->a:Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/concurrent/b;->b:Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/concurrent/b;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Lcom/meishu/sdk/core/loader/concurrent/e;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
