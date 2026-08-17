.class public final synthetic Lcom/sigmob/sdk/newInterstitial/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/newInterstitial/i$6;

.field public final synthetic c:Lcom/sigmob/sdk/videoplayer/d;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/newInterstitial/i$6;Lcom/sigmob/sdk/videoplayer/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/r;->b:Lcom/sigmob/sdk/newInterstitial/i$6;

    iput-object p2, p0, Lcom/sigmob/sdk/newInterstitial/r;->c:Lcom/sigmob/sdk/videoplayer/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/r;->b:Lcom/sigmob/sdk/newInterstitial/i$6;

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/r;->c:Lcom/sigmob/sdk/videoplayer/d;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/newInterstitial/i$6;->a(Lcom/sigmob/sdk/newInterstitial/i$6;Lcom/sigmob/sdk/videoplayer/d;)V

    return-void
.end method
