.class public final synthetic Lcom/sigmob/sdk/base/views/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/views/g$1;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/g$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/O;->b:Lcom/sigmob/sdk/base/views/g$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/O;->b:Lcom/sigmob/sdk/base/views/g$1;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/g$1;->a(Lcom/sigmob/sdk/base/views/g$1;)V

    return-void
.end method
