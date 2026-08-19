.class final Lcom/kwad/sdk/utils/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/utils/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private bos:Lcom/kwad/sdk/utils/h$b;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/utils/h$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/kwad/sdk/utils/h$d;->bos:Lcom/kwad/sdk/utils/h$b;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final D(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/collector/model/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/kwad/sdk/utils/h$a;->V(Ljava/util/List;)Lorg/json/JSONArray;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/sdk/utils/h;->Uo()Lcom/kwad/sdk/collector/h;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1, v0}, Lcom/kwad/sdk/collector/h;->c(Lorg/json/JSONArray;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/h$d;->bos:Lcom/kwad/sdk/utils/h$b;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/kwad/sdk/utils/h$b;->D(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method
