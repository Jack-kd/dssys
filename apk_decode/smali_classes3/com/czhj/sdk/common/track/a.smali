.class public final synthetic Lcom/czhj/sdk/common/track/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/czhj/sdk/common/track/AdTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/czhj/sdk/common/track/AdTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/czhj/sdk/common/track/a;->b:Lcom/czhj/sdk/common/track/AdTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/czhj/sdk/common/track/a;->b:Lcom/czhj/sdk/common/track/AdTracker;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/track/AdTracker;->deleteDB()V

    return-void
.end method
