.class public Lcom/meishu/sdk/core/loader/strategy/e$b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/loader/strategy/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/loader/strategy/e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/strategy/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/strategy/e$b;->a:Lcom/meishu/sdk/core/loader/strategy/e;

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
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/strategy/e$b;->a:Lcom/meishu/sdk/core/loader/strategy/e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/strategy/e;->k:Lcom/meishu/sdk/core/loader/concurrent/g;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/meishu/sdk/core/loader/concurrent/e;->g:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/meishu/sdk/core/loader/concurrent/e;->g:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method
