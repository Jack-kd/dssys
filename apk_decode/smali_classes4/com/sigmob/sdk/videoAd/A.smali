.class public final synthetic Lcom/sigmob/sdk/videoAd/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/videoAd/j;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/A;->b:Lcom/sigmob/sdk/videoAd/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/A;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->Z(Lcom/sigmob/sdk/videoAd/j;)V

    return-void
.end method
