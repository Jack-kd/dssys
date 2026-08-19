.class public final synthetic Lcom/sigmob/sdk/base/network/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/network/e;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/sigmob/sdk/base/network/e$a;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/network/e;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/network/o;->b:Lcom/sigmob/sdk/base/network/e;

    iput-object p2, p0, Lcom/sigmob/sdk/base/network/o;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/network/o;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/network/o;->e:Lcom/sigmob/sdk/base/network/e$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/o;->b:Lcom/sigmob/sdk/base/network/e;

    iget-object v1, p0, Lcom/sigmob/sdk/base/network/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/network/o;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/network/o;->e:Lcom/sigmob/sdk/base/network/e$a;

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/network/e;->h(Lcom/sigmob/sdk/base/network/e;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/network/e$a;)V

    return-void
.end method
