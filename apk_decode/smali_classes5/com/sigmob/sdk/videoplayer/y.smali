.class public final synthetic Lcom/sigmob/sdk/videoplayer/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/videoplayer/j;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/videoplayer/j;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/y;->b:Lcom/sigmob/sdk/videoplayer/j;

    iput p2, p0, Lcom/sigmob/sdk/videoplayer/y;->c:I

    iput p3, p0, Lcom/sigmob/sdk/videoplayer/y;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/y;->b:Lcom/sigmob/sdk/videoplayer/j;

    iget v1, p0, Lcom/sigmob/sdk/videoplayer/y;->c:I

    iget v2, p0, Lcom/sigmob/sdk/videoplayer/y;->d:I

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/videoplayer/j;->k(Lcom/sigmob/sdk/videoplayer/j;II)V

    return-void
.end method
