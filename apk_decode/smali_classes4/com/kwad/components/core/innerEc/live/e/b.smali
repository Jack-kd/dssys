.class public final Lcom/kwad/components/core/innerEc/live/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final Xp:Lcom/kwad/components/core/innerEc/live/e/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private Xq:Z

.field private final Xr:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/LongConnectStatusListener;


# direct methods
.method public constructor <init>(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;Lcom/kwad/components/core/innerEc/live/e/c;)V
    .locals 1
    .param p1    # Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/components/core/innerEc/live/e/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/e/b;->Xq:Z

    .line 6
    .line 7
    new-instance v0, Lcom/kwad/components/core/innerEc/live/e/b$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/e/b$1;-><init>(Lcom/kwad/components/core/innerEc/live/e/b;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/e/b;->Xr:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/LongConnectStatusListener;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/e/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/e/b;->Xp:Lcom/kwad/components/core/innerEc/live/e/c;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->registerLongConnectStatusListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/LongConnectStatusListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/e/b;)Lcom/kwad/components/core/innerEc/live/e/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/e/b;->Xp:Lcom/kwad/components/core/innerEc/live/e/c;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/e/b;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/e/b;->Xq:Z

    return p1
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/e/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/e/b;->Xr:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/LongConnectStatusListener;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->unregisterLongConnectStatusListener(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/listener/LongConnectStatusListener;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/e/b;->Xq:Z

    .line 10
    .line 11
    return-void
.end method
