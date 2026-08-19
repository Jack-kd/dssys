.class final Lcom/kwad/sdk/api/loader/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static Ex()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/api/loader/ac;->is64Bit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "arm64-v8a"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, "armeabi-v7a"

    .line 11
    .line 12
    return-object v0
.end method

.method public static is64Bit()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
