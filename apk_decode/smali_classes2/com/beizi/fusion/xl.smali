.class public abstract Lcom/beizi/fusion/xl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/xl$c;,
        Lcom/beizi/fusion/xl$b;
    }
.end annotation


# direct methods
.method public static a()Ljava/util/Comparator;
    .locals 2

    .line 1
    new-instance v0, Lcom/beizi/fusion/xl$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/beizi/fusion/xl$b;-><init>(Lcom/beizi/fusion/xl$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static b()Ljava/util/Comparator;
    .locals 2

    .line 1
    new-instance v0, Lcom/beizi/fusion/xl$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/beizi/fusion/xl$c;-><init>(Lcom/beizi/fusion/xl$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
