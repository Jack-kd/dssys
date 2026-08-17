.class final Lcom/kwad/sdk/m/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final bmM:Lcom/kwad/sdk/m/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/m/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/m/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/sdk/m/b$a;->bmM:Lcom/kwad/sdk/m/b;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic TH()Lcom/kwad/sdk/m/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/m/b$a;->bmM:Lcom/kwad/sdk/m/b;

    .line 2
    .line 3
    return-object v0
.end method
