.class public abstract Lcom/kwad/components/ad/reward/l/b;
.super Ljava/util/Observable;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/reward/l/c;
.implements Lcom/kwad/sdk/core/b;


# instance fields
.field private Ct:Z

.field protected Cu:Ljava/lang/String;

.field protected Cv:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/l/b;->Ct:Z

    .line 6
    .line 7
    return-void
.end method

.method private lc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/l/b;->Ct:Z

    .line 2
    .line 3
    return v0
.end method

.method private ld()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/l/b;->Ct:Z

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/l/b;->lc()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final kY()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/l/b;->Ct:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/l/b;->Ct:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/l/b;->ld()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final kZ()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/l/b;->Ct:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/l/b;->Ct:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/l/b;->ld()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final la()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/l/b;->Cu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final lb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/l/b;->Cv:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    const-string v0, "selfCompleted"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput-boolean p1, p0, Lcom/kwad/components/ad/reward/l/b;->Ct:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    :catchall_0
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "selfCompleted"

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/kwad/components/ad/reward/l/b;->Ct:Z

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
