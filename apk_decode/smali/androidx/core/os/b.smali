.class public abstract synthetic Landroidx/core/os/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-ge v0, v1, :cond_0

    const v1, 0x186a0

    mul-int/2addr v0, v1

    return v0

    :cond_0
    invoke-static {}, Landroidx/core/os/a;->a()I

    move-result v0

    return v0
.end method
