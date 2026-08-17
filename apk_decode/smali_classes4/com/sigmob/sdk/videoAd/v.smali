.class public final synthetic Lcom/sigmob/sdk/videoAd/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/videoAd/j;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/v;->a:Lcom/sigmob/sdk/videoAd/j;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/v;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/videoAd/j;->p(Lcom/sigmob/sdk/videoAd/j;Ljava/lang/Object;)V

    return-void
.end method
