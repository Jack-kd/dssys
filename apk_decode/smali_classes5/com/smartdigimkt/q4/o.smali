.class public final Lcom/smartdigimkt/q4/o;
.super Lcom/smartdigimkt/q4/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/i0/d;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartdigimkt/r4/m;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/smartdigimkt/r4/m;-><init>(Lcom/smartdigimkt/i0/d;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/smartdigimkt/q4/b;-><init>(Lcom/smartdigimkt/r4/d;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
