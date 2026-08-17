.class public final synthetic Lcom/sigmob/sdk/splash/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/splash/h;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/splash/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/t;->b:Lcom/sigmob/sdk/splash/h;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/t;->b:Lcom/sigmob/sdk/splash/h;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/splash/h;->d(Lcom/sigmob/sdk/splash/h;Landroid/media/MediaPlayer;)V

    return-void
.end method
