.class final Lcom/kwad/framework/filedownloader/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final azH:Lcom/kwad/framework/filedownloader/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/kwad/framework/filedownloader/f;-><init>(B)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/kwad/framework/filedownloader/f$a;->azH:Lcom/kwad/framework/filedownloader/f;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic Bm()Lcom/kwad/framework/filedownloader/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/framework/filedownloader/f$a;->azH:Lcom/kwad/framework/filedownloader/f;

    .line 2
    .line 3
    return-object v0
.end method
