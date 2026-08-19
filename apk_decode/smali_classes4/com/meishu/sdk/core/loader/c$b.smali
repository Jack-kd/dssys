.class public Lcom/meishu/sdk/core/loader/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/loader/c;->handleTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/loader/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/c$b;->a:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$b;->a:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/core/loader/c;->access$100(Lcom/meishu/sdk/core/loader/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$b;->a:Lcom/meishu/sdk/core/loader/c;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/c;->access$002(Lcom/meishu/sdk/core/loader/c;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$b;->a:Lcom/meishu/sdk/core/loader/c;

    .line 17
    .line 18
    const-string v1, "load ad timeout"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :catchall_0
    :goto_0
    return-void
.end method
