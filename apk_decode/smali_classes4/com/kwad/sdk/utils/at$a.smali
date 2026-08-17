.class final Lcom/kwad/sdk/utils/at$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/utils/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final bpP:Lcom/kwad/sdk/utils/at;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/utils/at;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/utils/at;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/sdk/utils/at$a;->bpP:Lcom/kwad/sdk/utils/at;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic VW()Lcom/kwad/sdk/utils/at;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/utils/at$a;->bpP:Lcom/kwad/sdk/utils/at;

    .line 2
    .line 3
    return-object v0
.end method
