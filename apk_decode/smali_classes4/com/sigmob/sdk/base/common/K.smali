.class public final synthetic Lcom/sigmob/sdk/base/common/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/czhj/sdk/common/track/AdTracker;

.field public final synthetic c:Lcom/czhj/volley/NetworkResponse;

.field public final synthetic d:Lcom/sigmob/sdk/base/common/ad$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;Lcom/sigmob/sdk/base/common/ad$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/K;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/K;->b:Lcom/czhj/sdk/common/track/AdTracker;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/K;->c:Lcom/czhj/volley/NetworkResponse;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/K;->d:Lcom/sigmob/sdk/base/common/ad$a;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/K;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/K;->b:Lcom/czhj/sdk/common/track/AdTracker;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/K;->c:Lcom/czhj/volley/NetworkResponse;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/K;->d:Lcom/sigmob/sdk/base/common/ad$a;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/base/common/ad;->d(Ljava/lang/String;Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;Lcom/sigmob/sdk/base/common/ad$a;Ljava/lang/Object;)V

    return-void
.end method
