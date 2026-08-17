.class public final synthetic Lcom/sigmob/sdk/videoplayer/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/videoplayer/f$b;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/videoplayer/f;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/videoplayer/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/n;->a:Lcom/sigmob/sdk/videoplayer/f;

    return-void
.end method


# virtual methods
.method public final onVolumeChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/n;->a:Lcom/sigmob/sdk/videoplayer/f;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/f;I)V

    return-void
.end method
