.class Lcom/kwad/sdk/f$a;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected aFU:Lcom/kwad/sdk/api/KsInitCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/bi;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/api/KsInitCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/f$a;->aFU:Lcom/kwad/sdk/api/KsInitCallback;

    .line 2
    .line 3
    return-void
.end method

.method public doTask()V
    .locals 0

    return-void
.end method
