.class public final synthetic Lcom/sigmob/sdk/base/views/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/views/an;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/an;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/G;->b:Lcom/sigmob/sdk/base/views/an;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/G;->b:Lcom/sigmob/sdk/base/views/an;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/an;->a(Lcom/sigmob/sdk/base/views/an;)V

    return-void
.end method
