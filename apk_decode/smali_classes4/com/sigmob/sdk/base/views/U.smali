.class public final synthetic Lcom/sigmob/sdk/base/views/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/mraid/h$b;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/base/views/z;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/U;->a:Lcom/sigmob/sdk/base/views/z;

    return-void
.end method


# virtual methods
.method public final onReady(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/U;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/base/views/z;->a(Lcom/sigmob/sdk/base/views/z;Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V

    return-void
.end method
