.class public final Lcom/kwad/framework/filedownloader/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/l$a;
    }
.end annotation


# static fields
.field private static azX:Lcom/kwad/framework/filedownloader/l$a;


# direct methods
.method public static Bx()Lcom/kwad/framework/filedownloader/l$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/framework/filedownloader/l;->azX:Lcom/kwad/framework/filedownloader/l$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static isValid()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/l;->Bx()Lcom/kwad/framework/filedownloader/l$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method
