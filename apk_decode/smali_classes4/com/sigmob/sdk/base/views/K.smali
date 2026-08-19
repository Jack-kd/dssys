.class public final synthetic Lcom/sigmob/sdk/base/views/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/views/c;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/K;->b:Lcom/sigmob/sdk/base/views/c;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/K;->b:Lcom/sigmob/sdk/base/views/c;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/views/c;->c(Lcom/sigmob/sdk/base/views/c;Landroid/media/MediaPlayer;)V

    return-void
.end method
