.class public abstract Lcom/beizi/fusion/ee$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/beizi/fusion/da;)Lcom/beizi/fusion/ee;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/beizi/fusion/da;->b()Lcom/beizi/fusion/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/beizi/fusion/d;->e:Lcom/beizi/fusion/d;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/beizi/fusion/gn;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lcom/beizi/fusion/gn;-><init>(Landroid/content/Context;Lcom/beizi/fusion/da;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lcom/beizi/fusion/cn;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/beizi/fusion/cn;-><init>(Landroid/content/Context;Lcom/beizi/fusion/da;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
