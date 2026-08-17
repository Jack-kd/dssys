.class public final synthetic Lcom/sigmob/sdk/base/network/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/czhj/volley/NetworkResponse;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/volley/NetworkResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/network/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/network/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/network/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/network/k;->d:Lcom/czhj/volley/NetworkResponse;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/k;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/network/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/network/k;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/network/k;->d:Lcom/czhj/volley/NetworkResponse;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/base/network/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/volley/NetworkResponse;Ljava/lang/Object;)V

    return-void
.end method
