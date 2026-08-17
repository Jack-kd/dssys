.class public final synthetic Lcom/sigmob/sdk/nativead/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/nativead/b;

.field public final synthetic c:Lcom/sigmob/sdk/base/models/rtb/BidResponse;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/b;Lcom/sigmob/sdk/base/models/rtb/BidResponse;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/J;->b:Lcom/sigmob/sdk/nativead/b;

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/J;->c:Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    iput-object p3, p0, Lcom/sigmob/sdk/nativead/J;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/J;->b:Lcom/sigmob/sdk/nativead/b;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/J;->c:Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/J;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/nativead/b;->b(Lcom/sigmob/sdk/nativead/b;Lcom/sigmob/sdk/base/models/rtb/BidResponse;Landroid/content/Context;)V

    return-void
.end method
