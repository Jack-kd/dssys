.class public Lcom/octopus/ad/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/d/d$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/octopus/ad/d/d$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/octopus/ad/d/d$1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0, p2}, Lcom/octopus/ad/d/d$1;-><init>(Landroid/graphics/Bitmap;Landroid/content/Context;Lcom/octopus/ad/d/d$a;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnThreadPool(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
