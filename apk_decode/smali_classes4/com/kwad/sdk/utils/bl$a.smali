.class final Lcom/kwad/sdk/utils/bl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/utils/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final bqt:Lcom/kwad/sdk/utils/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/utils/bl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/kwad/sdk/utils/bl;-><init>(B)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/kwad/sdk/utils/bl$a;->bqt:Lcom/kwad/sdk/utils/bl;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic Ws()Lcom/kwad/sdk/utils/bl;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/utils/bl$a;->bqt:Lcom/kwad/sdk/utils/bl;

    .line 2
    .line 3
    return-object v0
.end method
