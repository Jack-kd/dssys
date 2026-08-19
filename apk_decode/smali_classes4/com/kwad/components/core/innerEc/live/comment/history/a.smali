.class public final Lcom/kwad/components/core/innerEc/live/comment/history/a;
.super Lcom/kwad/components/core/innerEc/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/base/b;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/components/core/innerEc/live/base/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/kwad/components/core/innerEc/b/a;-><init>(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "liveParam"

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/i;->Fh()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
