.class public final synthetic Lcom/sigmob/sdk/videoAd/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/videoAd/j;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/videoAd/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/y;->b:Lcom/sigmob/sdk/videoAd/j;

    iput p2, p0, Lcom/sigmob/sdk/videoAd/y;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/y;->b:Lcom/sigmob/sdk/videoAd/j;

    iget v1, p0, Lcom/sigmob/sdk/videoAd/y;->c:I

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/j;->q(Lcom/sigmob/sdk/videoAd/j;I)V

    return-void
.end method
