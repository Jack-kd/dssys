.class public Lcom/meishu/sdk/core/bquery/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/bquery/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/bquery/h<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/bquery/j;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/bquery/e;Lcom/meishu/sdk/core/bquery/j;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/core/bquery/d;->a:Lcom/meishu/sdk/core/bquery/j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p2, Ljava/io/File;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/meishu/sdk/core/bquery/d;->a:Lcom/meishu/sdk/core/bquery/j;

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-interface {p3, p1, p2}, Lcom/meishu/sdk/core/bquery/j;->onSuccess(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onFail(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/bquery/d;->a:Lcom/meishu/sdk/core/bquery/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/bquery/j;->onFail(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
