.class public final synthetic Lcom/sigmob/sdk/base/network/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/network/e$b;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/network/n;->b:Lcom/sigmob/sdk/base/network/e$b;

    iput-object p2, p0, Lcom/sigmob/sdk/base/network/n;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/n;->b:Lcom/sigmob/sdk/base/network/e$b;

    iget-object v1, p0, Lcom/sigmob/sdk/base/network/n;->c:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/network/e;->c(Lcom/sigmob/sdk/base/network/e$b;Ljava/lang/Exception;)V

    return-void
.end method
