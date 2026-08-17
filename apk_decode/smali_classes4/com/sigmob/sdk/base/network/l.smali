.class public final synthetic Lcom/sigmob/sdk/base/network/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/network/e$a;

.field public final synthetic c:Ljava/lang/Exception;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/network/e$a;Ljava/lang/Exception;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/network/l;->b:Lcom/sigmob/sdk/base/network/e$a;

    iput-object p2, p0, Lcom/sigmob/sdk/base/network/l;->c:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/sigmob/sdk/base/network/l;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/l;->b:Lcom/sigmob/sdk/base/network/e$a;

    iget-object v1, p0, Lcom/sigmob/sdk/base/network/l;->c:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/sigmob/sdk/base/network/l;->d:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/network/e;->i(Lcom/sigmob/sdk/base/network/e$a;Ljava/lang/Exception;Ljava/io/File;)V

    return-void
.end method
