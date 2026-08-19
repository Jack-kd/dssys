.class public final synthetic Lcom/sigmob/sdk/videoplayer/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/videoplayer/j;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/videoplayer/j;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/C;->b:Lcom/sigmob/sdk/videoplayer/j;

    iput p2, p0, Lcom/sigmob/sdk/videoplayer/C;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/C;->b:Lcom/sigmob/sdk/videoplayer/j;

    iget v1, p0, Lcom/sigmob/sdk/videoplayer/C;->c:F

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoplayer/j;->l(Lcom/sigmob/sdk/videoplayer/j;F)V

    return-void
.end method
