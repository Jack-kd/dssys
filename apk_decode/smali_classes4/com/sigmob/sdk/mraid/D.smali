.class public final synthetic Lcom/sigmob/sdk/mraid/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/mraid/m$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/mraid/c;

.field public final synthetic b:Lcom/sigmob/sdk/mraid/k;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid/c;Lcom/sigmob/sdk/mraid/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/D;->a:Lcom/sigmob/sdk/mraid/c;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/D;->b:Lcom/sigmob/sdk/mraid/k;

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/sigmob/sdk/mraid/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/D;->a:Lcom/sigmob/sdk/mraid/c;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/D;->b:Lcom/sigmob/sdk/mraid/k;

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/mraid/c;->b(Lcom/sigmob/sdk/mraid/c;Lcom/sigmob/sdk/mraid/k;Lcom/sigmob/sdk/mraid/f;)V

    return-void
.end method
