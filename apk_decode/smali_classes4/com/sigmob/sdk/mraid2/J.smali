.class public final synthetic Lcom/sigmob/sdk/mraid2/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/mraid2/e;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/J;->b:Lcom/sigmob/sdk/mraid2/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/J;->b:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->i(Lcom/sigmob/sdk/mraid2/e;)V

    return-void
.end method
