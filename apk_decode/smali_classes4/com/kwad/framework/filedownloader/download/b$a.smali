.class final Lcom/kwad/framework/filedownloader/download/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/download/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final aBf:Lcom/kwad/framework/filedownloader/download/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/download/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/download/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/framework/filedownloader/download/b$a;->aBf:Lcom/kwad/framework/filedownloader/download/b;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic Cj()Lcom/kwad/framework/filedownloader/download/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/framework/filedownloader/download/b$a;->aBf:Lcom/kwad/framework/filedownloader/download/b;

    .line 2
    .line 3
    return-object v0
.end method
