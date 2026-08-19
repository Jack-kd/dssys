.class public final synthetic Lcom/sigmob/sdk/mraid/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/mraid/h$b;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/mraid/s;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/K;->a:Lcom/sigmob/sdk/mraid/s;

    return-void
.end method


# virtual methods
.method public final onReady(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/K;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/mraid/s;->q(Lcom/sigmob/sdk/mraid/s;Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V

    return-void
.end method
