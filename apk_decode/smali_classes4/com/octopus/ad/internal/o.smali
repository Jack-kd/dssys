.class public Lcom/octopus/ad/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/octopus/ad/internal/l;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/octopus/ad/internal/o$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/o$1;-><init>(Lcom/octopus/ad/internal/l;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnLogThreadPool(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
